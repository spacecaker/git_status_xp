.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeAndDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDate_Month:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 493
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    .line 575
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    .line 576
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    return-void
.end method

.method private convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 666
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 674
    .local v3, unlock_clock_drawables:[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [I

    .line 675
    .local v0, choiceHourNumber:[I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 676
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 677
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 680
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 684
    :cond_1
    aget v4, v0, v6

    if-ne v4, v7, :cond_2

    .line 685
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    const v5, 0x1080429

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 690
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 691
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    return-void

    .line 687
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 666
    nop

    :array_0
    .array-data 0x4
        0x27t 0x4t 0x8t 0x1t
        0x28t 0x4t 0x8t 0x1t
        0x2at 0x4t 0x8t 0x1t
        0x2bt 0x4t 0x8t 0x1t
        0x2ct 0x4t 0x8t 0x1t
        0x2dt 0x4t 0x8t 0x1t
        0x2et 0x4t 0x8t 0x1t
        0x2ft 0x4t 0x8t 0x1t
        0x30t 0x4t 0x8t 0x1t
        0x31t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private refreshTimeAndDate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 634
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 663
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 641
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 643
    .local v1, hourFormat:Ljava/text/SimpleDateFormat;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, hourString:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, minuteFormat:Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, minString:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_2

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 653
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x104006d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v6, 0x10400a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, dateFormat:Ljava/lang/String;
    const-string v5, "GT-S7500"

    const-string v6, "SPH-D710"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 662
    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 641
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #hourFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #hourString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v4           #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "hh"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_1

    .line 651
    .restart local v1       #hourFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #hourString:Ljava/lang/String;
    .restart local v3       #minString:Ljava/lang/String;
    .restart local v4       #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 655
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x104006e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 661
    .restart local v0       #dateFormat:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v6, 0x10400aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "mm"

    .line 696
    const-string v0, ""

    .line 698
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400a9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, dateFormat:Ljava/lang/String;
    const-string v6, "GT-S7500"

    const-string v7, "SPH-D710"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 701
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 703
    .local v2, dateText:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 704
    .local v5, timeText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 705
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x1040536

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 720
    :goto_1
    move-object v0, v5

    .line 723
    return-object v0

    .line 700
    .end local v2           #dateText:Ljava/lang/CharSequence;
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #minuteText:Ljava/lang/String;
    .end local v5           #timeText:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400aa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 710
    .restart local v2       #dateText:Ljava/lang/CharSequence;
    .restart local v5       #timeText:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "hh"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 711
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 712
    .restart local v4       #minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 713
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x1040518

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 715
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x1040519

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 580
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 584
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 586
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 594
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 599
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    .line 600
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 611
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    .line 612
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    .line 613
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    .line 614
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    .line 615
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    .line 616
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    .line 617
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    .line 618
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    .line 619
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 623
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 624
    const v0, 0x1020263

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    .line 625
    const v0, 0x1020264

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    .line 626
    const v0, 0x1020266

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    .line 627
    const v0, 0x1020267

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    .line 628
    const v0, 0x1020268

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    .line 629
    const v0, 0x102026a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    .line 630
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    .line 631
    return-void
.end method
