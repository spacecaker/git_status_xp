.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Ljava/lang/Object;
.source "UsbResolverActivity.java"


# static fields
.field public static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field public static final TAG:Ljava/lang/String; = "UsbResolverActivity"


# instance fields
.field private mAccessory:LUsbAccessory;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.app cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.hardware.usb cannot be resolved\n\tThe import android.os.ServiceManager cannot be resolved\n\tResolverActivity cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tThe method onCreate(Bundle) of type UsbResolverActivity must override or implement a supertype method\n\tThe method getIntent() is undefined for the type UsbResolverActivity\n\tThe method finish() is undefined for the type UsbResolverActivity\n\tThe method getResources() is undefined for the type UsbResolverActivity\n\tcom.android.internal.R cannot be resolved to a variable\n\tResolverActivity cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tThe method finish() is undefined for the type UsbResolverActivity\n\tUsbAccessory cannot be resolved to a type\n\tThe method onDestroy() of type UsbResolverActivity must override or implement a supertype method\n\tThe method unregisterReceiver(UsbDisconnectedReceiver) is undefined for the type UsbResolverActivity\n\tResolverActivity cannot be resolved to a type\n\tServiceManager cannot be resolved\n\tUSB_SERVICE cannot be resolved to a variable\n\tIUsbManager cannot be resolved to a type\n\tIUsbManager cannot be resolved\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tThe method startActivity(Intent) is undefined for the type UsbResolverActivity\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe method onCreate(Bundle) of type UsbResolverActivity must override or implement a supertype method\n\tThe method getIntent() is undefined for the type UsbResolverActivity\n\tThe method finish() is undefined for the type UsbResolverActivity\n\tThe method getResources() is undefined for the type UsbResolverActivity\n\tcom.android.internal.R cannot be resolved to a variable\n\tResolverActivity cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbManager cannot be resolved to a variable\n\tUsbAccessory cannot be resolved to a type\n\tThe method finish() is undefined for the type UsbResolverActivity\n\tUsbAccessory cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe method onDestroy() of type UsbResolverActivity must override or implement a supertype method\n\tThe method unregisterReceiver(UsbDisconnectedReceiver) is undefined for the type UsbResolverActivity\n\tResolverActivity cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tServiceManager cannot be resolved\n\tUSB_SERVICE cannot be resolved to a variable\n\tIUsbManager cannot be resolved to a type\n\tIUsbManager cannot be resolved\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tUsbAccessory cannot be resolved to a type\n\tThe method startActivity(Intent) is undefined for the type UsbResolverActivity\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
