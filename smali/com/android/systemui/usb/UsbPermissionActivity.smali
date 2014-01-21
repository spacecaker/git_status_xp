.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Ljava/lang/Object;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbPermissionActivity"


# instance fields
.field private mAccessory:LUsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.os.ServiceManager cannot be resolved\n\tThe import com.android.internal.app cannot be resolved\n\tThe import com.android.internal.app cannot be resolved\n\tAlertActivity cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tThe method onCreate(Bundle) of type UsbPermissionActivity must override or implement a supertype method\n\tAlertActivity cannot be resolved to a type\n\tThe method getIntent() is undefined for the type UsbPermissionActivity\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tThe method getPackageManager() is undefined for the type UsbPermissionActivity\n\tThe method finish() is undefined for the type UsbPermissionActivity\n\tAlertController cannot be resolved to a type\n\tmAlertParams cannot be resolved to a variable\n\tThe method getString(int, String) is undefined for the type UsbPermissionActivity\n\tThe method getString(int) is undefined for the type UsbPermissionActivity\n\tThe method getString(int) is undefined for the type UsbPermissionActivity\n\tThe method getSystemService(String) is undefined for the type UsbPermissionActivity\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tThe method setupAlert() is undefined for the type UsbPermissionActivity\n\tThe method onDestroy() of type UsbPermissionActivity must override or implement a supertype method\n\tServiceManager cannot be resolved\n\tUSB_SERVICE cannot be resolved to a variable\n\tIUsbManager cannot be resolved to a type\n\tIUsbManager cannot be resolved\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tThe method send(Context, int, Intent) in the type PendingIntent is not applicable for the arguments (UsbPermissionActivity, int, Intent)\n\tThe method unregisterReceiver(UsbDisconnectedReceiver) is undefined for the type UsbPermissionActivity\n\tAlertActivity cannot be resolved to a type\n\tThe method finish() is undefined for the type UsbPermissionActivity\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tThe method finish() is undefined for the type UsbPermissionActivity\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe method onCreate(Bundle) of type UsbPermissionActivity must override or implement a supertype method\n\tAlertActivity cannot be resolved to a type\n\tThe method getIntent() is undefined for the type UsbPermissionActivity\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tThe method getPackageManager() is undefined for the type UsbPermissionActivity\n\tThe method finish() is undefined for the type UsbPermissionActivity\n\tAlertController cannot be resolved to a type\n\tmAlertParams cannot be resolved to a variable\n\tThe method getString(int, String) is undefined for the type UsbPermissionActivity\n\tThe method getString(int) is undefined for the type UsbPermissionActivity\n\tThe method getString(int) is undefined for the type UsbPermissionActivity\n\tThe method getSystemService(String) is undefined for the type UsbPermissionActivity\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tThe method setupAlert() is undefined for the type UsbPermissionActivity\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe method onDestroy() of type UsbPermissionActivity must override or implement a supertype method\n\tServiceManager cannot be resolved\n\tUSB_SERVICE cannot be resolved to a variable\n\tIUsbManager cannot be resolved to a type\n\tIUsbManager cannot be resolved\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tThe method send(Context, int, Intent) in the type PendingIntent is not applicable for the arguments (UsbPermissionActivity, int, Intent)\n\tThe method unregisterReceiver(UsbDisconnectedReceiver) is undefined for the type UsbPermissionActivity\n\tAlertActivity cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
