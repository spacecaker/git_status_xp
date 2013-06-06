.class public Lcom/android/systemui/statusbar/CenterClock;
.super Landroid/widget/TextView;
.source "CenterClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;
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
    .line 59
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/CenterClock;->Text_Size:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getTextSize()F

    move-result v0

    const/high16 v1, 0x4080

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/CenterClock;->textsize:F

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/CenterClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CenterClock$1;-><init>(Lcom/android/systemui/statusbar/CenterClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/CenterClock;Landroid/os/Handler;)V

    .line 116
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;->observe()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateSettings()V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/CenterClock;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/CenterClock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/CenterClock;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/CenterClock;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/CenterClock;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateSettings()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/CenterClock;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateTypeface()V

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const v9, 0xef01

    const v8, 0xef00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 196
    if-eqz v1, :cond_3

    .line 197
    const v1, 0x1040076

    .line 206
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 213
    sget v1, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    if-eqz v1, :cond_1

    .line 214
    const/4 v1, -0x1

    move v2, v6

    move v3, v6

    .line 216
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 228
    :goto_2
    if-ltz v1, :cond_1

    move v2, v1

    .line 231
    :goto_3
    if-lez v2, :cond_0

    sub-int v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_8

    .line 234
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 240
    iput-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormatString:Ljava/lang/String;

    move-object v0, v1

    .line 244
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 246
    sget v1, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 248
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 249
    if-ltz v1, :cond_2

    if-le v2, v1, :cond_2

    .line 250
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 251
    sget v0, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 252
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    move-object v0, v3

    .line 266
    :cond_2
    return-object v0

    .line 199
    :cond_3
    const v1, 0x1040075

    goto/16 :goto_0

    .line 217
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 219
    const/16 v5, 0x27

    if-ne v4, v5, :cond_5

    .line 220
    if-eqz v3, :cond_6

    move v3, v6

    .line 222
    :cond_5
    :goto_6
    if-nez v3, :cond_7

    const/16 v5, 0x61

    if-ne v4, v5, :cond_7

    move v1, v2

    .line 224
    goto/16 :goto_2

    :cond_6
    move v3, v7

    .line 220
    goto :goto_6

    .line 216
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 232
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_4

    .line 254
    :cond_a
    sget v0, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    if-ne v0, v7, :cond_b

    .line 255
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v0, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 257
    const/16 v4, 0x22

    .line 256
    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    :cond_b
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 260
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    iget v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockColor:I

    .line 276
    const-string v2, "status_bar_am_pm"

    const/4 v3, 0x2

    .line 275
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/CenterClock;->mAmPmStyle:I

    .line 278
    const-string v2, "status_bar_clockcolor"

    .line 277
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockColor:I

    .line 280
    iget v2, p0, Lcom/android/systemui/statusbar/CenterClock;->mAmPmStyle:I

    sget v3, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockColor:I

    if-eq v1, v2, :cond_1

    .line 281
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mAmPmStyle:I

    sput v1, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    .line 282
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockFormatString:Ljava/lang/String;

    .line 284
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateCenterClock()V

    .line 290
    :cond_1
    const-string v1, "status_bar_centerclock"

    .line 289
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 290
    if-ne v1, v4, :cond_2

    move v1, v4

    .line 289
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mShowCenterClock:Z

    .line 292
    const-string v1, "status_bar_clock"

    .line 291
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 292
    if-ne v0, v4, :cond_3

    move v0, v4

    .line 291
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mShowClock:Z

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mShowCenterClock:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mShowClock:Z

    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/CenterClock;->setVisibility(I)V

    .line 298
    :goto_2
    return-void

    :cond_2
    move v1, v5

    .line 290
    goto :goto_0

    :cond_3
    move v0, v5

    .line 292
    goto :goto_1

    .line 297
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setVisibility(I)V

    goto :goto_2
.end method

.method private final updateSize()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 301
    sget v0, Lcom/android/systemui/statusbar/CenterClock;->Text_Size:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 302
    iget v0, p0, Lcom/android/systemui/statusbar/CenterClock;->textsize:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTextSize(F)V

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/CenterClock;->Text_Size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 304
    iget v0, p0, Lcom/android/systemui/statusbar/CenterClock;->textsize:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTextSize(F)V

    goto :goto_0

    .line 306
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/CenterClock;->textsize:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTextSize(F)V

    goto :goto_0
.end method

.method private final updateTypeface()V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->text:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "system/TEAM/font/"

    const-string v2, "clock_font.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mAttached:Z

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CenterClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateCenterClock()V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateTypeface()V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mAttached:Z

    .line 163
    :cond_0
    return-void
.end method

.method final updateCenterClock()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_am_pm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/CenterClock;->AM_PM_STYLE:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_size"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/CenterClock;->Text_Size:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CenterClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_text_font"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/CenterClock;->text:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p0, Lcom/android/systemui/statusbar/CenterClock;->mClockColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateTypeface()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->updateSize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/CenterClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CenterClock;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/CenterClock;->text:Z

    goto :goto_0
.end method
