.class public Lcom/android/settings/DateTimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoPref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 449
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 404
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 406
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 407
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 408
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 409
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 411
    if-gez p1, :cond_0

    .line 412
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 413
    neg-int p1, p1

    .line 418
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 419
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 421
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 422
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 424
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 426
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 427
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 429
    return-object v0

    .line 415
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 374
    :goto_0
    return v1

    .line 371
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 374
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, curDateFormat:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 364
    const-string v0, "MM-dd-yyyy"

    .line 366
    :cond_0
    return-object v0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 7

    .prologue
    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 390
    .local v4, tz:Ljava/util/TimeZone;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 391
    .local v2, daylight:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 398
    .local v0, date:J
    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initUI()V
    .locals 13

    .prologue
    const v12, 0x7f050002

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getAutoState()Z

    move-result v7

    .line 83
    .local v7, autoEnabled:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 84
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 86
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 89
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 90
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 91
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 92
    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, dateFormats:[Ljava/lang/String;
    array-length v0, v9

    new-array v10, v0, [Ljava/lang/String;

    .line 96
    .local v10, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, currentFormat:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 100
    const-string v8, ""

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v7, :cond_1

    move v1, v11

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v7, :cond_2

    move v1, v11

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v7, :cond_3

    move v1, v11

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 125
    return-void

    :cond_1
    move v1, v5

    .line 120
    goto :goto_0

    :cond_2
    move v1, v5

    .line 121
    goto :goto_1

    :cond_3
    move v1, v5

    .line 122
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 352
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_0

    const-string v2, "24"

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 359
    return-void

    .line 356
    :cond_0
    const-string v2, "12"

    goto :goto_0
.end method

.method private setAutoState(ZZ)V
    .locals 5
    .parameter "isEnabled"
    .parameter "autotimeStatus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    if-nez p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez p2, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez p2, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez p2, :cond_4

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    if-eqz p2, :cond_1

    move v2, v4

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_4

    :cond_2
    move v1, v3

    .line 339
    goto :goto_1

    :cond_3
    move v1, v3

    .line 340
    goto :goto_2

    :cond_4
    move v1, v3

    .line 341
    goto :goto_3
.end method

.method private setDateFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 p1, 0x0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method private updateTimeAndDateDisplay()V
    .locals 14

    .prologue
    const/16 v12, 0x7d0

    const/4 v11, 0x1

    const/16 v10, 0x7f4

    .line 160
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 162
    .local v6, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 164
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 166
    .local v9, year:I
    if-lt v9, v12, :cond_0

    if-le v9, v10, :cond_1

    .line 168
    :cond_0
    if-le v9, v10, :cond_3

    :goto_0
    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 171
    .local v7, when:J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 173
    const-wide/16 v10, 0x3e8

    div-long v10, v7, v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 174
    invoke-static {v7, v8}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 178
    .end local v7           #when:J
    :cond_1
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 179
    .local v3, dummyDate:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, dateEntries:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    return-void

    .end local v1           #dateEntries:[Ljava/lang/String;
    .end local v2           #dateFormats:[Ljava/lang/String;
    .end local v3           #dummyDate:Ljava/util/Date;
    .end local v4           #i:I
    :cond_3
    move v10, v12

    .line 168
    goto :goto_0

    .line 185
    .restart local v1       #dateEntries:[Ljava/lang/String;
    .restart local v2       #dateFormats:[Ljava/lang/String;
    .restart local v3       #dummyDate:Ljava/util/Date;
    .restart local v4       #i:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 78
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    .line 270
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 244
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 245
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 252
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 255
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 256
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 262
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 198
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 199
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 201
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 202
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    const-class v1, Lcom/android/settings/ZoneList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "d"

    .prologue
    .line 275
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 277
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v2, v0

    .line 278
    .local v2, datePicker:Landroid/app/DatePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 280
    .local v1, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 287
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v3, v0

    .line 288
    .local v3, timePicker:Landroid/app/TimePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 289
    .restart local v1       #calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 134
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 137
    .local v0, activePhoneType:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 138
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DateTimeSettings;->setAutoState(ZZ)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/android/settings/DateTimeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 150
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const-string v4, "date_format"

    .line 226
    const-string v2, "date_format"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 236
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    .local v0, autoEnabled:Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings/DateTimeSettings;->setAutoState(ZZ)V

    goto :goto_0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 213
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 215
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 216
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 223
    return-void
.end method
