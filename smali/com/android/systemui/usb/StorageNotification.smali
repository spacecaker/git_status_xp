.class public Lcom/android/systemui/usb/StorageNotification;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# static fields
.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import android.os.storage.StorageEventListener cannot be resolved\n\tThe import android.util.Slog cannot be resolved\n\tStorageEventListener cannot be resolved to a type\n\tThe method isUsbMassStorageConnected() is undefined for the type StorageManager\n\tSlog cannot be resolved\n\tThe method onUsbMassStorageConnectionChanged(boolean) of type StorageNotification must override or implement a supertype method\n\tSlog cannot be resolved\n\tThe method onStorageStateChanged(String, String, String) of type StorageNotification must override or implement a supertype method\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tThe method isUsbMassStorageEnabled() is undefined for the type StorageManager\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.app cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.app cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tThe method isUsbMassStorageEnabled() is undefined for the type StorageManager\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.app cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.app cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tThe method onStorageStateChanged(String, String, String) of type StorageNotification must override or implement a supertype method\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tThe method onUsbMassStorageConnectionChanged(boolean) of type StorageNotification must override or implement a supertype method\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 2
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
