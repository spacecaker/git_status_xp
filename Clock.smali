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


# instance fields
.field private mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v1, Lcom/android/systemui/statusbar/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/Clock$1;-><init>(Lcom/android/systemui/statusbar/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/Clock;Landroid/os/Handler;)V

    .line 105
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/Clock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;->observe()V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateSettings()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 24

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 173
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 176
    .local v9, b24:Z
    if-eqz v9, :cond_2

    .line 177
    const v18, 0x1040076

    .line 182
    .local v18, res:I
    :goto_0
    const v5, 0xef00

    .line 183
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 186
    .local v6, MAGIC2:C
    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 194
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v22, :cond_6

    .line 195
    const/4 v7, -0x1

    .line 196
    .local v7, a:I
    const/16 v17, 0x0

    .line 197
    .local v17, quoted:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 198
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 200
    .local v10, c:C
    const/16 v22, 0x27

    move v0, v10

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 201
    if-nez v17, :cond_3

    const/16 v22, 0x1

    move/from16 v17, v22

    .line 203
    :cond_0
    :goto_2
    if-nez v17, :cond_4

    const/16 v22, 0x61

    move v0, v10

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 204
    move v7, v14

    .line 209
    .end local v10           #c:C
    :cond_1
    if-ltz v7, :cond_6

    .line 212
    move v8, v7

    .line 213
    .local v8, b:I
    :goto_3
    if-lez v7, :cond_5

    const/16 v22, 0x1

    sub-int v22, v7, v22

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 214
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 179
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v12           #format:Ljava/lang/String;
    .end local v14           #i:I
    .end local v17           #quoted:Z
    .end local v18           #res:I
    :cond_2
    const v18, 0x1040075

    .restart local v18       #res:I
    goto :goto_0

    .line 201
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v10       #c:C
    .restart local v12       #format:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v17       #quoted:Z
    :cond_3
    const/16 v22, 0x0

    move/from16 v17, v22

    goto :goto_2

    .line 197
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 216
    .end local v10           #c:C
    .restart local v8       #b:I
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xef00

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xef01

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v8, 0x1

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v14           #i:I
    .end local v17           #quoted:Z
    :cond_6
    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v20, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 222
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 226
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, result:Ljava/lang/String;
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v22, :cond_a

    .line 229
    const v22, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 230
    .local v15, magic1:I
    const v22, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 231
    .local v16, magic2:I
    if-ltz v15, :cond_a

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_a

    .line 232
    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .local v13, formatted:Landroid/text/SpannableStringBuilder;
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 234
    add-int/lit8 v22, v16, 0x1

    move-object v0, v13

    move v1, v15

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    move-object/from16 v22, v13

    .line 248
    .end local v13           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v15           #magic1:I
    .end local v16           #magic2:I
    :goto_6
    return-object v22

    .line 224
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v0

    .restart local v20       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 236
    .restart local v13       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v15       #magic1:I
    .restart local v16       #magic2:I
    .restart local v19       #result:Ljava/lang/String;
    :cond_8
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 237
    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v22, 0x3f333333

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 238
    .local v21, style:Landroid/text/style/CharacterStyle;
    const/16 v22, 0x22

    move-object v0, v13

    move-object/from16 v1, v21

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 241
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v22, v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 242
    add-int/lit8 v22, v15, 0x1

    move-object v0, v13

    move v1, v15

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v13           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v15           #magic1:I
    .end local v16           #magic2:I
    :cond_a
    move-object/from16 v22, v19

    .line 248
    goto :goto_6
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateSettings()V

    .line 137
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 116
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_clock_style"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method protected updateSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 253
    iget-object v4, p0, Lcom/android/systemui/statusbar/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 255
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "statusbar_clock_color"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, mClockColor:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextColor(I)V

    .line 259
    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 260
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 264
    :cond_0
    const-string v4, "statusbar_clock_style"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 265
    .local v2, mClockStyle:I
    const-string v4, "statusbar_clock_position"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, mClockPosition:I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v7, :cond_2

    .line 268
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    goto :goto_0
.end method
