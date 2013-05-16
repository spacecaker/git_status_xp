.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field private static AM_PM_STYLE:I


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
    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    .line 102
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 21

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 164
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 167
    .local v6, b24:Z
    if-eqz v6, :cond_2

    .line 168
    const v15, 0x1040081

    .line 173
    .local v15, res:I
    :goto_0
    const v2, 0xef00

    .line 174
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 177
    .local v3, MAGIC2:C
    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 184
    sget v19, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    if-eqz v19, :cond_6

    .line 185
    const/4 v4, -0x1

    .line 186
    .local v4, a:I
    const/4 v14, 0x0

    .line 187
    .local v14, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 188
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 190
    .local v7, c:C
    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 191
    if-nez v14, :cond_3

    const/4 v14, 0x1

    .line 193
    :cond_0
    :goto_2
    if-nez v14, :cond_4

    const/16 v19, 0x61

    move/from16 v0, v19

    if-ne v7, v0, :cond_4

    .line 194
    move v4, v11

    .line 199
    .end local v7           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 201
    move v5, v4

    .line 202
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 203
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 170
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #quoted:Z
    .end local v15           #res:I
    :cond_2
    const v15, 0x1040080

    .restart local v15       #res:I
    goto :goto_0

    .line 191
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v7       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #quoted:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 187
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 205
    .end local v7           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef00

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef01

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v5, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 210
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v11           #i:I
    .end local v14           #quoted:Z
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 211
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 215
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 217
    .local v16, result:Ljava/lang/String;
    sget v19, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    if-eqz v19, :cond_a

    .line 218
    const v19, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 219
    .local v12, magic1:I
    const v19, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 220
    .local v13, magic2:I
    if-ltz v12, :cond_a

    if-le v13, v12, :cond_a

    .line 221
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    sget v19, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 223
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 237
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :goto_5
    return-object v10

    .line 213
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 225
    .restart local v10       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v12       #magic1:I
    .restart local v13       #magic2:I
    .restart local v16       #result:Ljava/lang/String;
    :cond_8
    sget v19, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 226
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f333333

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 227
    .local v18, style:Landroid/text/style/CharacterStyle;
    const/16 v19, 0x22

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 230
    .end local v18           #style:Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 231
    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :cond_a
    move-object/from16 v10, v16

    .line 237
    goto :goto_5
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "status_bar_am_pm"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 247
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    sget v4, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    if-eq v3, v4, :cond_0

    .line 248
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    sput v3, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 249
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 251
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 256
    :cond_0
    const-string v3, "status_bar_clock"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    .line 259
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 263
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 256
    goto :goto_0

    .line 262
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 111
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 140
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
