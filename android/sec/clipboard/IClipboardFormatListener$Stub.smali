.class public abstract Landroid/sec/clipboard/IClipboardFormatListener$Stub;
.super Landroid/os/Binder;
.source "IClipboardFormatListener.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardFormatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardFormatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardFormatListener"

.field static final TRANSACTION_onNewClipboardData:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    .line 49
    :cond_0
    const-string v1, "android.sec.clipboard.IClipboardFormatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardFormatListener;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 53
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "android.sec.clipboard.IClipboardFormatListener"

    .line 61
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 65
    :sswitch_0
    const-string v2, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 66
    goto :goto_0

    .line 70
    :sswitch_1
    const-string v2, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 80
    .local v1, _arg1:Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 82
    goto :goto_0

    .line 78
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_1

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
