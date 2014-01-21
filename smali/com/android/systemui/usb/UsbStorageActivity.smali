.class public Lcom/android/systemui/usb/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbStorageActivity"

.field static final localLOGV:Z


# instance fields
.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBanner:Landroid/widget/TextView;

.field private mDestroyed:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:LStorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.R cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.os.storage.IMountService cannot be resolved\n\tThe import android.os.storage.StorageEventListener cannot be resolved\n\tThe import android.os.ServiceManager cannot be resolved\n\tUsbManager cannot be resolved to a variable\n\tStorageEventListener cannot be resolved to a type\n\tStorageEventListener cannot be resolved to a type\n\tThe method onStorageStateChanged(String, String, String) of type new StorageEventListener(){} must override or implement a supertype method\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tStorageEventListener cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tThe method isUsbMassStorageEnabled() is undefined for the type StorageManager\n\tStorageEventListener cannot be resolved to a type\n\tStorageEventListener cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tIMountService cannot be resolved to a type\n\tServiceManager cannot be resolved\n\tIMountService cannot be resolved\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tThe method enableUsbMassStorage() is undefined for the type StorageManager\n\tThe method disableUsbMassStorage() is undefined for the type StorageManager\n\tIMountService cannot be resolved to a type\n\tThe method getMountService() from the type UsbStorageActivity refers to the missing type IMountService\n\tThe method getRunningExternalApplications() is undefined for the type ActivityManager\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkStorageUsersAsync()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tIMountService cannot be resolved to a type\n\tThe method getMountService() from the type UsbStorageActivity refers to the missing type IMountService\n\tThe method getRunningExternalApplications() is undefined for the type ActivityManager\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMountService()LIMountService;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tIMountService cannot be resolved to a type\n\tServiceManager cannot be resolved\n\tIMountService cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tUsbManager cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleShowDialog(I)V
    .locals 2
    .parameter

    .prologue
    .line 242
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchDisplay(Z)V
    .locals 2
    .parameter

    .prologue
    .line 146
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchDisplayAsync(Z)V
    .locals 2
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .parameter

    .prologue
    .line 272
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe method enableUsbMassStorage() is undefined for the type StorageManager\n\tThe method disableUsbMassStorage() is undefined for the type StorageManager\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n\tR cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStorageEventListener cannot be resolved to a type\n\tStorageEventListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStorageEventListener cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tThe method isUsbMassStorageEnabled() is undefined for the type StorageManager\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
