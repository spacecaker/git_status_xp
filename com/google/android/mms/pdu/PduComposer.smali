.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mOptionalFieldAttendance:Z

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 131
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 94
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 99
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 104
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 114
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 119
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    .line 142
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 145
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 147
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "address"

    .prologue
    .line 462
    const/4 v2, 0x0

    .line 465
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 467
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 469
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 481
    .end local v0           #addressType:I
    :goto_1
    return-object v3

    .line 470
    .restart local v0       #addressType:I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 472
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 477
    .end local v0           #addressType:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 478
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 473
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 475
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 22
    .parameter "field"

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_0

    .line 650
    :pswitch_0
    const/16 v20, 0x3

    .line 653
    :goto_0
    return v20

    .line 490
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 493
    .local v19, version:I
    if-nez v19, :cond_1

    .line 494
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 653
    .end local v19           #version:I
    :cond_0
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 496
    .restart local v19       #version:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 503
    .end local v19           #version:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 504
    .local v18, textString:[B
    if-nez v18, :cond_2

    .line 505
    const/16 v20, 0x2

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 515
    .end local v18           #textString:[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 517
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_3

    .line 518
    const/16 v20, 0x2

    goto :goto_0

    .line 522
    :cond_3
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object v0, v3

    array-length v0, v0

    move/from16 v20, v0

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 523
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 524
    .local v17, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_4

    .line 525
    const/16 v20, 0x1

    goto :goto_0

    .line 528
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 522
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 535
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #i:I
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 538
    .local v12, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 543
    :cond_5
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 545
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 547
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 551
    .local v13, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 554
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 555
    .restart local v17       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_7

    .line 556
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 559
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 562
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 563
    .local v11, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 564
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 575
    .end local v11           #flen:I
    .end local v12           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 576
    .local v16, octet:I
    if-nez v16, :cond_8

    .line 577
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 580
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 581
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 585
    .end local v16           #octet:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 586
    .local v4, date:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_9

    .line 587
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 590
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 591
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 595
    .end local v4           #date:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 597
    .local v6, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_a

    .line 598
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 601
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 602
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 606
    .end local v6           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 607
    .local v15, messageClass:[B
    if-nez v15, :cond_b

    .line 608
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 611
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 612
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 614
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 615
    :cond_c
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 617
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 618
    :cond_d
    const-string/jumbo v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 620
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 621
    :cond_e
    const-string v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 623
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 625
    :cond_f
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 630
    .end local v15           #messageClass:[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 631
    .local v7, expiry:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_10

    .line 632
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 635
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 640
    .local v10, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 641
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 643
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 644
    .local v9, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 645
    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    const/4 v1, 0x5

    .line 1173
    if-nez p0, :cond_0

    move v0, v1

    .line 1191
    :goto_0
    return v0

    .line 1177
    :cond_0
    const-string v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    const/4 v0, 0x3

    goto :goto_0

    .line 1180
    :cond_1
    const-string v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    const/4 v0, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    const-string v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1185
    const/4 v0, 0x2

    goto :goto_0

    .line 1186
    :cond_3
    const-string v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1188
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1191
    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 742
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 746
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 747
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 750
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 762
    :goto_0
    return v0

    .line 755
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 756
    goto :goto_0

    .line 760
    :cond_2
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 762
    goto :goto_0
.end method

.method private makeMessageBody()I
    .locals 32

    .prologue
    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 861
    .local v16, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 862
    .local v10, contentType:Ljava/lang/String;
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 863
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_0

    .line 865
    const/16 v29, 0x1

    .line 1027
    :goto_0
    return v29

    .line 868
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 872
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_2

    .line 874
    :cond_1
    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 877
    const/16 v29, 0x0

    goto :goto_0

    .line 882
    :cond_2
    const/16 v29, 0x0

    :try_start_0
    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 884
    .local v23, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 885
    .local v28, start:[B
    if-eqz v28, :cond_3

    .line 886
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 887
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 888
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 895
    :cond_3
    :goto_1
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 896
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 903
    .local v15, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 904
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 908
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 909
    .local v27, partNum:I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 910
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 911
    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 912
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 915
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 918
    .local v11, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 920
    .local v24, partContentType:[B
    if-nez v24, :cond_5

    .line 922
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 890
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15           #ctLength:I
    .end local v20           #i:I
    .end local v24           #partContentType:[B
    .end local v27           #partNum:I
    .restart local v28       #start:[B
    :cond_4
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 898
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :catch_0
    move-exception v29

    move-object/from16 v18, v29

    .line 899
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 926
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15       #ctLength:I
    .restart local v20       #i:I
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v24       #partContentType:[B
    .restart local v27       #partNum:I
    :cond_5
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 928
    .local v25, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v25, :cond_6

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 938
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 940
    .local v22, name:[B
    if-nez v22, :cond_7

    .line 941
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 943
    if-nez v22, :cond_7

    .line 944
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 946
    if-nez v22, :cond_7

    .line 950
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 931
    .end local v22           #name:[B
    :cond_6
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_4

    .line 954
    .restart local v22       #name:[B
    :cond_7
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 958
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 959
    .local v7, charset:I
    if-eqz v7, :cond_8

    .line 960
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 961
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 964
    :cond_8
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 965
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 966
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 970
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 972
    .local v8, contentId:[B
    if-eqz v8, :cond_9

    .line 973
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 974
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    const/16 v29, 0x3e

    move-object v0, v8

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 975
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 982
    :cond_9
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 983
    .local v9, contentLocation:[B
    if-eqz v9, :cond_a

    .line 984
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 985
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 989
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 991
    .local v19, headerLength:I
    const/16 v17, 0x0

    .line 992
    .local v17, dataLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 994
    .local v26, partData:[B
    if-eqz v26, :cond_d

    .line 995
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 996
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1017
    :cond_b
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 1018
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 977
    .end local v9           #contentLocation:[B
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v26           #partData:[B
    :cond_c
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_5

    .line 1000
    .restart local v9       #contentLocation:[B
    .restart local v17       #dataLength:I
    .restart local v19       #headerLength:I
    .restart local v26       #partData:[B
    :cond_d
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v6, v0

    .line 1001
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1002
    .local v14, cr:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 1003
    .local v21, len:I
    :goto_6
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object v1, v6

    move/from16 v2, v30

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1005
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1006
    add-int v17, v17, v21

    goto :goto_6

    .line 1008
    .end local v6           #buffer:[B
    .end local v14           #cr:Ljava/io/InputStream;
    .end local v21           #len:I
    :catch_1
    move-exception v29

    move-object/from16 v18, v29

    .line 1009
    .local v18, e:Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1010
    .end local v18           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v29

    move-object/from16 v18, v29

    .line 1011
    .local v18, e:Ljava/io/IOException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1012
    .end local v18           #e:Ljava/io/IOException;
    :catch_3
    move-exception v29

    move-object/from16 v18, v29

    .line 1013
    .local v18, e:Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v18           #e:Ljava/lang/RuntimeException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1022
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1023
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 910
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1027
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v22           #name:[B
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #partContentType:[B
    .end local v25           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v26           #partData:[B
    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 708
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 710
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 714
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 715
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 718
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 733
    :goto_0
    return v0

    .line 723
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 724
    goto :goto_0

    .line 728
    :cond_2
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 729
    goto :goto_0

    :cond_3
    move v0, v2

    .line 733
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 662
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 666
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 667
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 670
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 701
    :goto_0
    return v0

    .line 675
    :cond_1
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 676
    goto :goto_0

    .line 680
    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 681
    goto :goto_0

    .line 685
    :cond_3
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 686
    goto :goto_0

    .line 690
    :cond_4
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 693
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 694
    goto :goto_0

    :cond_5
    move v0, v2

    .line 701
    goto :goto_0
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 769
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 770
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 771
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 775
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 776
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 779
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 781
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 782
    .local v1, trid:[B
    if-nez v1, :cond_1

    .line 784
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 789
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 848
    :goto_0
    return v2

    .line 794
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 797
    :cond_3
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 798
    goto :goto_0

    .line 801
    :cond_4
    const/4 v0, 0x0

    .line 804
    .local v0, recipient:Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 805
    const/4 v0, 0x1

    .line 809
    :cond_5
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 810
    const/4 v0, 0x1

    .line 814
    :cond_6
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 815
    const/4 v0, 0x1

    .line 819
    :cond_7
    if-nez v0, :cond_8

    move v2, v3

    .line 820
    goto :goto_0

    .line 824
    :cond_8
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 828
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 831
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_a

    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 834
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 837
    :cond_b
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 840
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 843
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 846
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    move v2, v4

    .line 848
    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 204
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 404
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter "enStr"

    .prologue
    .line 331
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 333
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 334
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 335
    .local v3, textString:[B
    if-nez v3, :cond_1

    .line 354
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 345
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 347
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 348
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 350
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 351
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 352
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 353
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 10
    .parameter "longInt"

    .prologue
    const/16 v9, 0x8

    .line 264
    move-wide v3, p1

    .line 267
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v9, :cond_0

    .line 268
    ushr-long/2addr v3, v9

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 276
    const/4 v5, 0x1

    sub-int v5, v2, v5

    mul-int/lit8 v1, v5, 0x8

    .line 278
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 279
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 280
    sub-int/2addr v1, v9

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 233
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 459
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 441
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 442
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 443
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 444
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 222
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 246
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 319
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 297
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 301
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 303
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 371
    const-wide/16 v1, 0x7f

    .line 373
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 374
    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    .line 381
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 382
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 383
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 385
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 387
    add-int/lit8 v0, v0, -0x1

    .line 388
    goto :goto_1

    .line 378
    .end local v3           #temp:J
    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 391
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 420
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 421
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 196
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 162
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    .line 187
    :goto_0
    return-object v1

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 165
    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 170
    goto :goto_0

    .line 174
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 175
    goto :goto_0

    .line 179
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 180
    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setOptionalFieldAttendance(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1032
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    .line 1033
    return-void
.end method
