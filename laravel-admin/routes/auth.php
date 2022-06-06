<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Auth\NewPasswordController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\VerifyEmailController;
use Illuminate\Support\Facades\Route;

Route::middleware('guest')->group(function () {
    Route::get('admin/register', [RegisteredUserController::class, 'create'])
                ->name('register');

    Route::post('admin/register', [RegisteredUserController::class, 'store']);

    Route::get('admin/login', [AuthenticatedSessionController::class, 'create'])
                ->name('login');

    Route::post('admin/login', [AuthenticatedSessionController::class, 'store']);

    Route::get('admin/forgot-password', [PasswordResetLinkController::class, 'create'])
                ->name('password.request');

    Route::post('admin/forgot-password', [PasswordResetLinkController::class, 'store'])
                ->name('password.email');

    Route::get('admin/reset-password/{token}', [NewPasswordController::class, 'create'])
                ->name('password.reset');

    Route::post('admin/reset-password', [NewPasswordController::class, 'store'])
                ->name('password.update');
});

Route::middleware('auth')->group(function () {
    Route::get('admin/verify-email', [EmailVerificationPromptController::class, '__invoke'])
                ->name('verification.notice');

    Route::get('admin/verify-email/{id}/{hash}', [VerifyEmailController::class, '__invoke'])
                ->middleware(['signed', 'throttle:6,1'])
                ->name('verification.verify');

    Route::post('admin/email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
                ->middleware('throttle:6,1')
                ->name('verification.send');

    Route::get('admin/confirm-password', [ConfirmablePasswordController::class, 'show'])
                ->name('password.confirm');

    Route::post('admin/confirm-password', [ConfirmablePasswordController::class, 'store']);

    Route::post('admin/logout', [AuthenticatedSessionController::class, 'destroy'])
                ->name('logout');
    Route::get('admin/logout-user', [AuthenticatedSessionController::class, 'destroy'])
        ->name('logout-user');
});
