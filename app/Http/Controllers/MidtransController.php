<?php

namespace App\Http\Controllers;

use App\TravelPackage;
use Illuminate\Http\Request;

use App\Transaction;
use App\Mail\TransactionSuccess;

use Illuminate\Support\Facades\Mail;

use Midtrans\Config;
use Midtrans\Notification;

class MidtransController extends Controller
{
    public function notificationHandler(Request $request)
    {
        //set konfigurasi midtrans
        //configusi midtrans
        Config::$serverKey = config('midtrans.serverKey');
        Config::$isProduction = config('midtrans.isProduction');
        Config::$isSanitized = config('midtrans.isSanitized');
        Config::$is3ds = config('midtrans.is3ds');

        //buat intance midtrans notification
        $notification = new Notification();

        //pecah order id agar bisa di terima database
        $order = explode('-', $notification->order_id);

        //Assign ke variable untuk memudahkan coding
        $status = $notification->transaction_status;
        $type =  $notification->payment_type;
        $fraud = $notification->fraud_status;
        $order_id = $order[1];

        // cari transaksi berdasarkan ID
        $transaction = Transaction::findOrFail($order_id);


        //handle notification status midtrans
        if ($status == 'capture') {
            if ($type == 'credit_card') {
                if ($fraud == 'challenge') {
                    $transaction->transactions_status = "CHALLENGE";
                } else {
                    $transaction->transactions_status = "SUCCESS";
                }
            }
        } else if ($status == 'settlement') {

            $transaction->transactions_status = "SUCCESS";
        } else if ($status == 'pending') {

            $transaction->transactions_status = "PENDING";
        } else if ($status == 'deny') {

            $transaction->transactions_status = "FAILED";
        } else if ($status == 'expire') {

            $transaction->transactions_status = "EXPIRED";
        } else if ($status == 'cancel') {

            $transaction->transactions_status = "FAILED";
        }
        //SIMPAN TRANSAKSI

        $transaction->save();

        //kirim email
        if ($transaction) {
            if ($status == 'capture' && $fraud == 'accept') {
                Mail::to($transaction->user)->send(
                    new TransactionSuccess($transaction)
                );
            } else if ($status == 'settlement') {
                Mail::to($transaction->user)->send(
                    new TransactionSuccess($transaction)
                );
            } else if ($status == 'success') {
                Mail::to($transaction->user)->send(
                    new TransactionSuccess($transaction)
                );
            } else if ($status == 'capture' && $fraud == 'challenge') {
                return response()->json([
                    'meta' => [
                        'code' => 200,
                        'message' => 'Midtrans Payment Challenge'
                    ]
                ]);
            } else {
                return response()->json([
                    'meta' => [
                        'code' => 200,
                        'message' => 'Midtrans Payment Not settlement'
                    ]
                ]);
            }
            return response()->json([
                'meta' => [
                    'code' => 200,
                    'message' => 'Midtrans notification success'
                ]
            ]);
        }
    }
    public function finishRedirect(Request $request)
    {
        return view('pages.success');
    }
    public function unfinishRedirect(Request $request)
    {
        return view('pages.unfinish');
    }
    public function errorRedirect(Request $request)
    {
        return view('pages.failed');
    }
}
