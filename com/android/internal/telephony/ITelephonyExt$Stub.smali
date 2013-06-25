.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0xc

.field static final TRANSACTION_getCallBaseTime:I = 0x10

.field static final TRANSACTION_getCallTime:I = 0xf

.field static final TRANSACTION_getCallerName:I = 0xe

.field static final TRANSACTION_getHoldCallsCount:I = 0xd

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xa

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_initiateFakecall:I = 0x7

.field static final TRANSACTION_isSimFDNEnabled:I = 0x6

.field static final TRANSACTION_isVideoCall:I = 0x11

.field static final TRANSACTION_setMute:I = 0x9

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0x8

.field static final TRANSACTION_turnOnSpeaker:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.android.internal.telephony.ITelephonyExt"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 62
    goto :goto_0

    :cond_0
    move v4, v7

    .line 61
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 72
    goto :goto_0

    :cond_1
    move v4, v7

    .line 71
    goto :goto_2

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 80
    goto :goto_0

    :cond_2
    move v4, v7

    .line 79
    goto :goto_3

    .line 84
    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v2

    .line 86
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 88
    goto :goto_0

    .line 92
    .end local v2           #_result:I
    :sswitch_5
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v2

    .line 94
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 96
    goto :goto_0

    .line 100
    .end local v2           #_result:I
    :sswitch_6
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v2

    .line 102
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v2, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 104
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 103
    goto :goto_4

    .line 108
    .end local v2           #_result:Z
    :sswitch_7
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->initiateFakecall()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 111
    goto/16 :goto_0

    .line 115
    :sswitch_8
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 118
    goto/16 :goto_0

    .line 122
    :sswitch_9
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v5

    .line 125
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 127
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v7

    .line 124
    goto :goto_5

    .line 131
    :sswitch_a
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v2

    .line 133
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v2, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 135
    goto/16 :goto_0

    :cond_5
    move v4, v7

    .line 134
    goto :goto_6

    .line 139
    .end local v2           #_result:Z
    :sswitch_b
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v5

    .line 142
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 144
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v7

    .line 141
    goto :goto_7

    .line 148
    :sswitch_c
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v2

    .line 150
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v2           #_result:I
    :sswitch_d
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v2

    .line 158
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 160
    goto/16 :goto_0

    .line 164
    .end local v2           #_result:I
    :sswitch_e
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 168
    goto/16 :goto_0

    .line 172
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v2

    .line 174
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 176
    goto/16 :goto_0

    .line 180
    .end local v2           #_result:J
    :sswitch_10
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v2

    .line 182
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 184
    goto/16 :goto_0

    .line 188
    .end local v2           #_result:J
    :sswitch_11
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isVideoCall()Z

    move-result v2

    .line 190
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 192
    goto/16 :goto_0

    :cond_7
    move v4, v7

    .line 191
    goto :goto_8

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
