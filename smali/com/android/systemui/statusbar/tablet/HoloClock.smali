.class public Lcom/android/systemui/statusbar/tablet/HoloClock;
.super Landroid/widget/FrameLayout;
.source "HoloClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;
    }
.end annotation


# static fields
.field private static AM_PM_STYLE:I

.field private static sBackgroundType:Landroid/graphics/Typeface;

.field private static sForegroundType:Landroid/graphics/Typeface;

.field private static sSolidType:Landroid/graphics/Typeface;


# instance fields
.field private mAmPmStyle:I

.field private mAttached:Z

.field private mBgText:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mFgText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowClock:Z

.field private mSolidText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance v1, Lcom/android/systemui/statusbar/tablet/HoloClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/HoloClock$1;-><init>(Lcom/android/systemui/statusbar/tablet/HoloClock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/tablet/HoloClock;Landroid/os/Handler;)V

    .line 108
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;->observe()V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateSettings()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/HoloClock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/tablet/HoloClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getTimeText()Ljava/lang/CharSequence;
    .locals 20

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 198
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    const v14, 0x1040081

    .line 202
    .local v14, res:I
    :goto_0
    const v2, 0xef00

    .line 203
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 206
    .local v3, MAGIC2:C
    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 213
    sget v18, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    if-eqz v18, :cond_6

    .line 214
    const/4 v4, -0x1

    .line 215
    .local v4, a:I
    const/4 v13, 0x0

    .line 216
    .local v13, quoted:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 217
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 219
    .local v6, c:C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v6, v0, :cond_0

    .line 220
    if-nez v13, :cond_3

    const/4 v13, 0x1

    .line 222
    :cond_0
    :goto_2
    if-nez v13, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 223
    move v4, v10

    .line 228
    .end local v6           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 230
    move v5, v4

    .line 231
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 232
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 198
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v8           #format:Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #quoted:Z
    .end local v14           #res:I
    :cond_2
    const v14, 0x1040080

    goto :goto_0

    .line 220
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v6       #c:C
    .restart local v8       #format:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v13       #quoted:Z
    .restart local v14       #res:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 216
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 234
    .end local v6           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v10           #i:I
    .end local v13           #quoted:Z
    :cond_6
    const-string v18, "a"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 240
    new-instance v16, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v16, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 241
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    .line 245
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, result:Ljava/lang/String;
    sget v18, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    if-eqz v18, :cond_a

    .line 248
    const v18, 0xef00

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 249
    .local v11, magic1:I
    const v18, 0xef01

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 250
    .local v12, magic2:I
    if-ltz v11, :cond_a

    if-le v12, v11, :cond_a

    .line 251
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 252
    .local v9, formatted:Landroid/text/SpannableStringBuilder;
    sget v18, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 253
    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 267
    .end local v9           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v11           #magic1:I
    .end local v12           #magic2:I
    :goto_5
    return-object v9

    .line 243
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v0

    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 255
    .restart local v9       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v11       #magic1:I
    .restart local v12       #magic2:I
    .restart local v15       #result:Ljava/lang/String;
    :cond_8
    sget v18, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 256
    new-instance v17, Landroid/text/style/RelativeSizeSpan;

    const v18, 0x3f333333

    invoke-direct/range {v17 .. v18}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 257
    .local v17, style:Landroid/text/style/CharacterStyle;
    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v11, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    .end local v17           #style:Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 261
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v9           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v11           #magic1:I
    .end local v12           #magic2:I
    :cond_a
    move-object v9, v15

    .line 267
    goto :goto_5
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "status_bar_am_pm"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAmPmStyle:I

    .line 276
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAmPmStyle:I

    sget v4, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    if-eq v3, v4, :cond_0

    .line 277
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAmPmStyle:I

    sput v3, Lcom/android/systemui/statusbar/tablet/HoloClock;->AM_PM_STYLE:I

    .line 278
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    .line 280
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    .line 285
    :cond_0
    const-string v3, "status_bar_clock"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mShowClock:Z

    .line 288
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mShowClock:Z

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->setVisibility(I)V

    .line 292
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 285
    goto :goto_0

    .line 291
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/HoloClock;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 158
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    .line 162
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    .line 171
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 117
    sget-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "/system/fonts/AndroidClock_Solid.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    .line 119
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    .line 120
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    .line 122
    :cond_0
    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_1
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    :cond_2
    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    :cond_3
    return-void
.end method

.method final updateClock()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getTimeText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 191
    .local v0, txt:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    return-void
.end method
