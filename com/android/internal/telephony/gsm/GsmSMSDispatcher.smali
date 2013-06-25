.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field static final IMEI_SECRET_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x00C6"

.field static final IMEI_SECRET_CHAR_UTF_8_HEX:Ljava/lang/String; = "C6"

.field static final IMEI_SPACE_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x0020"

.field static final IMEI_SPACE_CHAR_UTF_8_DEC:Ljava/lang/String; = "20"

.field static final IMEI_SPACE_CHAR_UTF_8_HEX:Ljava/lang/String; = "0x20"

.field static final IMEI_TRIGGER:Ljava/lang/String; = "TRIGGER"

.field static final IMEI_VNCHANGE:Ljava/lang/String; = "VNCHANGE"

.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method private checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 12
    .parameter "userData"

    .prologue
    const/16 v11, 0xa

    const/16 v8, 0x9

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 313
    if-eqz p1, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 316
    .local v4, length:I
    if-lez v4, :cond_3

    .line 317
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 318
    .local v1, ch:C
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, firstByteInHex:Ljava/lang/String;
    const-string v7, "C6"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "0x00C6"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 322
    :cond_0
    if-le v4, v9, :cond_1

    .line 324
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 325
    .local v6, secondCh:C
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, SecondByteInHex:Ljava/lang/String;
    const-string v7, "20"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "0x20"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "0x0020"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    .line 358
    .end local v0           #SecondByteInHex:Ljava/lang/String;
    .end local v1           #ch:C
    .end local v3           #firstByteInHex:Ljava/lang/String;
    .end local v4           #length:I
    .end local v6           #secondCh:C
    :goto_0
    return v7

    .line 339
    .restart local v1       #ch:C
    .restart local v3       #firstByteInHex:Ljava/lang/String;
    .restart local v4       #length:I
    :cond_1
    if-ne v4, v8, :cond_2

    .line 340
    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, s1:Ljava/lang/String;
    const-string v7, "TRIGGER"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 342
    goto :goto_0

    .line 345
    .end local v5           #s1:Ljava/lang/String;
    :cond_2
    if-le v4, v11, :cond_3

    .line 346
    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 347
    .restart local v5       #s1:Ljava/lang/String;
    const-string v7, "VNCHANGE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 348
    goto :goto_0

    .line 354
    .end local v1           #ch:C
    .end local v3           #firstByteInHex:Ljava/lang/String;
    .end local v5           #s1:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 355
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #length:I
    :cond_3
    move v7, v10

    .line 358
    goto :goto_0
.end method

.method private getSmscNumber([BZ)Ljava/lang/String;
    .locals 14
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 79
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 83
    .local v2, extra:I
    const/4 v8, 0x0

    .line 85
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 87
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    .line 89
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 137
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 92
    .end local v7           #smsc:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    .line 93
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const/4 v4, 0x1

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 98
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 99
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_5

    .line 102
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_3
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 106
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 107
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    .line 108
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    :cond_4
    const/16 v11, 0xa

    if-ge v3, v11, :cond_2

    .line 111
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 116
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v8, v11, 0x2

    .line 120
    if-eqz v4, :cond_7

    .line 122
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 123
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    if-eqz p2, :cond_6

    .line 132
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 135
    :cond_6
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 137
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_0

    .line 127
    .end local v7           #smsc:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_3
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 681
    packed-switch p1, :pswitch_data_0

    .line 694
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 685
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 689
    :pswitch_3
    const/16 v0, 0xd4

    goto :goto_0

    .line 691
    :pswitch_4
    const/16 v0, 0xd5

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    .line 547
    .local v24, ss:I
    if-eqz v24, :cond_1

    .line 548
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    :goto_0
    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_9

    .line 549
    const/16 v22, 0x0

    .line 550
    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 551
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 553
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 554
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 548
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 559
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 561
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 562
    .local v19, msgCount:I
    const/4 v9, 0x0

    .line 564
    .local v9, encoding:I
    sput v19, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 566
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 567
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 568
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 569
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 572
    :cond_2
    iget v9, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 574
    :cond_3
    aput-object v15, v16, v17

    .line 567
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 577
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 578
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 579
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 580
    add-int/lit8 v4, v17, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 581
    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 582
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 583
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 584
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v12

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 585
    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 586
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 587
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 590
    :cond_5
    const/16 v22, 0x0

    .line 591
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 592
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 595
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v14, 0x0

    .line 596
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 597
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 600
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v14, :cond_8

    const/4 v4, 0x1

    move v7, v4

    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v11, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 604
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 605
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 609
    .restart local v25       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 577
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 600
    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3

    .line 611
    .end local v9           #encoding:I
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v19           #msgCount:I
    .end local v21           #refNumber:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 655
    :cond_0
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 660
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 662
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .parameter "smsb"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "GSM"

    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v7, 0x2

    .line 294
    :goto_0
    return v7

    .line 217
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v5, v0

    .line 218
    .local v5, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .line 220
    .local v1, handled:Z
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    const-string v7, "GSM"

    const-string v7, "Received short message type 0, Dont display or store it. Send Ack"

    invoke-static {v11, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 224
    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 229
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 230
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v7

    or-int/2addr v1, v7

    .line 232
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_3

    move v8, v9

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    move v7, v9

    .line 243
    goto :goto_0

    :cond_3
    move v8, v10

    .line 232
    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 236
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v7

    or-int/2addr v1, v7

    .line 238
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_5

    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v8, v10

    goto :goto_3

    .line 246
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v7, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v7, v8, :cond_7

    .line 249
    const/4 v7, 0x3

    goto/16 :goto_0

    .line 252
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    .line 255
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_e

    .line 257
    :cond_8
    new-array v3, v9, [[B

    .line 258
    .local v3, pdus:[[B
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    aput-object v7, v3, v10

    .line 260
    if-eqz v6, :cond_a

    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_a

    .line 261
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v8, 0xb84

    if-ne v7, v8, :cond_9

    .line 262
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v7

    goto/16 :goto_0

    .line 265
    :cond_9
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 291
    :goto_4
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 270
    :cond_a
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, sales_code:Ljava/lang/String;
    if-eqz v4, :cond_d

    const-string v7, "INU"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "INS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 273
    :cond_b
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkImeiTrackerMessage(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v9, :cond_c

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v7, "pdus"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.RECEIVE_SMS"

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4

    .line 281
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .line 288
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .line 294
    .end local v3           #pdus:[[B
    .end local v4           #sales_code:Ljava/lang/String;
    :cond_e
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v7

    goto/16 :goto_0
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 8
    .parameter "smsc_hexstring"

    .prologue
    const/4 v7, -0x1

    const-string v6, "GSM"

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 148
    .local v0, garbage_value:Z
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsc_hexstring = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 154
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 164
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 166
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 168
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 171
    return-void

    .line 158
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 159
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring has garbage value"

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 667
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 669
    return-void
.end method

.method protected handleBroadcastSms([B)V
    .locals 23
    .parameter "Cbpdu"

    .prologue
    .line 795
    const/16 v17, 0x0

    :try_start_0
    check-cast v17, [[B

    .line 796
    .local v17, pdus:[[B
    move-object/from16 v19, p1

    .line 799
    .local v19, receivedPdu:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 800
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SMS CB pdu data: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .local v20, sb:Ljava/lang/StringBuilder;
    move v15, v11

    .local v15, j:I
    :goto_1
    add-int/lit8 v21, v11, 0x8

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 802
    aget-byte v21, v19, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .line 803
    .local v5, b:I
    const/16 v21, 0x10

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 804
    const/16 v21, 0x30

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 806
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 808
    .end local v5           #b:I
    :cond_1
    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    .line 812
    .end local v15           #j:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 813
    .local v10, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 814
    .local v18, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 815
    .local v6, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .line 816
    .local v16, lac:I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 818
    .local v7, cid:I
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 820
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v16

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 823
    .local v8, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pdus:[[B
    check-cast v17, [[B

    .line 825
    .restart local v17       #pdus:[[B
    if-nez v17, :cond_3

    .line 828
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_3
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aput-object v19, v17, v21

    .line 836
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 837
    aget-object v21, v17, v11

    if-nez v21, :cond_5

    .line 871
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :cond_4
    :goto_3
    return-void

    .line 836
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v8       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 844
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v13

    .line 852
    .local v13, isEmergencyMessage:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchCbPdus([[B)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 861
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 862
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 864
    .local v12, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_7

    .line 865
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 868
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v12           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v13           #isEmergencyMessage:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 869
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v21, "GSM"

    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 847
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_8
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 848
    const/16 v21, 0x0

    aput-object v19, v17, v21
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 181
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 182
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 183
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 185
    .local v7, tpStatus:I
    if-eqz v6, :cond_2

    .line 186
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 187
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 188
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 189
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 191
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 192
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 195
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 198
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 207
    return-void

    .line 187
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 365
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 367
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 368
    return-void

    .line 365
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 635
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 637
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 640
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 641
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 642
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 644
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 647
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 398
    .local v20, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 399
    .local v18, msgCount:I
    const/4 v10, 0x0

    .line 401
    .local v10, encoding:I
    sput v18, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 403
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 404
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 405
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 406
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    .line 409
    :cond_0
    iget v10, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 411
    :cond_1
    aput-object v15, v16, v17

    .line 404
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 414
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 415
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 416
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 417
    add-int/lit8 v5, v17, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 418
    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 425
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 426
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 427
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 428
    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 429
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 430
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 433
    :cond_3
    const/16 v21, 0x0

    .line 434
    .local v21, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 435
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 438
    .restart local v21       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v14, 0x0

    .line 439
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 440
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 443
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v14, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 447
    .local v19, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v21

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 414
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 443
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    .line 449
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 27
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 459
    .local v24, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 461
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 462
    .local v22, msgCount:I
    const/16 v19, 0x0

    .line 463
    .local v19, encoding:I
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v20, v0

    .line 465
    .local v20, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 466
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .line 467
    .local v18, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_1

    if-eqz v19, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 470
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    .line 472
    :cond_1
    aput-object v18, v20, v21

    .line 465
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 475
    .end local v18           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 476
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 477
    .local v16, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 478
    add-int/lit8 v5, v21, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 479
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 486
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 487
    new-instance v26, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 488
    .local v26, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 490
    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 491
    aget-object v5, v20, v21

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 492
    aget-object v5, v20, v21

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 495
    :cond_3
    const/16 v25, 0x0

    .line 496
    .local v25, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 497
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #sentIntent:Landroid/app/PendingIntent;
    check-cast v25, Landroid/app/PendingIntent;

    .line 500
    .restart local v25       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/16 v17, 0x0

    .line 501
    .local v17, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 502
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 505
    .restart local v17       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v17, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    const/4 v5, 0x3

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    move v13, v5

    :goto_3
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v14, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v15, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v5 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v23

    .line 510
    .local v23, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v25

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 475
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 505
    .end local v23           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    :cond_7
    move/from16 v13, p9

    goto :goto_3

    .line 512
    .end local v16           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v25           #sentIntent:Landroid/app/PendingIntent;
    .end local v26           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_8
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 615
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 617
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 618
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 620
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 621
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 623
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 373
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 375
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 376
    return-void

    .line 373
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 384
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 385
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p5, :cond_0

    const/4 v5, 0x1

    move v8, v5

    :goto_0
    iget v13, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v14, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 388
    .local v16, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 389
    return-void

    .line 385
    .end local v16           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    move v8, v5

    goto :goto_0
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 674
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 676
    return-void
.end method
