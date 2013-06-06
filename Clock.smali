.class public Lcom/android/systemui/statusbar/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field private static AM_PM_STYLE:I = 0x0

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final SIZE_LRG:I = 0x2

.field private static final SIZE_NML:I = 0x1

.field private static final SIZE_SML:I

.field private static Text_Size:I


# instance fields
.field private mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockColor:I

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCenterClock:Z

.field private mShowClock:Z

.field private text:Z

.field private textsize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/Clock;->Text_Size:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getTextSize()F

    move-result v0

    const/high16 v1, 0x4080

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/Clock;->textsize:F

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/Clock$1;-><init>(Lcom/android/systemui/statusbar/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/Clock;Landroid/os/Handler;)V

    .line 116
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;->observe()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateSettings()V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/Clock;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateTypeface()V

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const v10, 0xef01

    const v9, 0xef00

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 199
    if-eqz v1, :cond_3

    sget v1, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-ne v1, v8, :cond_3

    .line 200
    const v1, 0x1040076

    .line 209
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 216
    sget v1, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v1, :cond_1

    .line 217
    const/4 v1, -0x1

    move v2, v6

    move v3, v6

    .line 219
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 231
    :goto_2
    if-ltz v1, :cond_1

    move v2, v1

    .line 234
    :goto_3
    if-lez v2, :cond_0

    sub-int v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_8

    .line 237
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 243
    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    move-object v0, v1

    .line 247
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 249
    sget v1, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 251
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 252
    if-ltz v1, :cond_2

    if-le v2, v1, :cond_2

    .line 253
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    sget v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-ne v0, v8, :cond_a

    .line 255
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    move-object v0, v3

    .line 269
    :cond_2
    return-object v0

    .line 202
    :cond_3
    const v1, 0x1040075

    goto/16 :goto_0

    .line 220
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 222
    const/16 v5, 0x27

    if-ne v4, v5, :cond_5

    .line 223
    if-eqz v3, :cond_6

    move v3, v6

    .line 225
    :cond_5
    :goto_6
    if-nez v3, :cond_7

    const/16 v5, 0x61

    if-ne v4, v5, :cond_7

    move v1, v2

    .line 227
    goto/16 :goto_2

    :cond_6
    move v3, v7

    .line 223
    goto :goto_6

    .line 219
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 235
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 245
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_4

    .line 257
    :cond_a
    sget v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-ne v0, v7, :cond_b

    .line 258
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v0, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 260
    const/16 v4, 0x22

    .line 259
    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    :cond_b
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 263
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    iget v1, p0, Lcom/android/systemui/statusbar/Clock;->mClockColor:I

    .line 279
    const-string v2, "status_bar_am_pm"

    const/4 v3, 0x2

    .line 278
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/Clock;->mAmPmStyle:I

    .line 281
    const-string v2, "status_bar_clockcolor"

    .line 280
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/Clock;->mClockColor:I

    .line 283
    iget v2, p0, Lcom/android/systemui/statusbar/Clock;->mAmPmStyle:I

    sget v3, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/Clock;->mClockColor:I

    if-eq v1, v2, :cond_1

    .line 284
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/Clock;->mAmPmStyle:I

    sput v1, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    .line 285
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 287
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 293
    :cond_1
    const-string v1, "status_bar_clock"

    .line 292
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 293
    if-ne v1, v4, :cond_2

    move v1, v4

    .line 292
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mShowClock:Z

    .line 295
    const-string v1, "status_bar_centerclock"

    .line 294
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 295
    if-ne v0, v4, :cond_3

    move v0, v4

    .line 294
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mShowCenterClock:Z

    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mShowClock:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mShowCenterClock:Z

    if-nez v0, :cond_4

    .line 298
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 301
    :goto_2
    return-void

    :cond_2
    move v1, v5

    .line 293
    goto :goto_0

    :cond_3
    move v0, v5

    .line 295
    goto :goto_1

    .line 300
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    goto :goto_2
.end method

.method private final updateSize()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 304
    sget v0, Lcom/android/systemui/statusbar/Clock;->Text_Size:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/android/systemui/statusbar/Clock;->textsize:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextSize(F)V

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/Clock;->Text_Size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 307
    iget v0, p0, Lcom/android/systemui/statusbar/Clock;->textsize:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextSize(F)V

    goto :goto_0

    .line 309
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/Clock;->textsize:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextSize(F)V

    goto :goto_0
.end method

.method private final updateTypeface()V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->text:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "system/TEAM/font/"

    const-string v2, "clock_font.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateTypeface()V

    .line 157
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 166
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_am_pm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_size"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/Clock;->Text_Size:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_text_font"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/Clock;->text:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateTypeface()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateSize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/Clock;->text:Z

    goto :goto_0
.end method
