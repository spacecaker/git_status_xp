.class public Lcom/android/internal/policy/impl/CircleLockScreenTTS;
.super Ljava/lang/Object;
.source "CircleLockScreenTTS.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDefaultCountry:Ljava/lang/String;

.field mDefaultLanguage:Ljava/lang/String;

.field mDefaultLocVariant:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "CircleLockScreenTTS"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->DBG:Z

    .line 35
    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLanguage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultCountry:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLocVariant:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 46
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 63
    :cond_0
    return-void
.end method

.method public isDrivingMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v0, v4

    .line 51
    .local v0, drivingMode:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v4

    .line 54
    :goto_1
    return v1

    .end local v0           #drivingMode:Z
    :cond_0
    move v0, v3

    .line 48
    goto :goto_0

    .restart local v0       #drivingMode:Z
    :cond_1
    move v1, v3

    .line 54
    goto :goto_1
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLanguage:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultCountry:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLocVariant:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultCountry:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 74
    .local v0, languageResult:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 79
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS locale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0           #languageResult:I
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->TAG:Ljava/lang/String;

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;I)V
    .locals 2
    .parameter "text"
    .parameter "queueType"

    .prologue
    .line 89
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->isDrivingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenTTS;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 94
    :cond_0
    return-void
.end method
