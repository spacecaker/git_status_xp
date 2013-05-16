.class public Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingerValues:[I

.field private mRingerValuesIndex:I

.field private final mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private mRingersIndex:I

.field private final mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_ring_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 38
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 40
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v6

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 42
    new-instance v7, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v8, p0

    move v10, v9

    move v11, v6

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 44
    new-array v0, v13, [Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 47
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 49
    new-array v0, v13, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 52
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 57
    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mType:Ljava/lang/String;

    .line 58
    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private ensureAudioManager(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 183
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    :cond_0
    return-void
.end method

.method private findCurrentState(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_in_silent"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_2

    move v2, v1

    .line 156
    .local v2, vibrateInSilent:Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 157
    .local v3, vibrateSetting:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 161
    .local v4, ringerMode:I
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 162
    const/4 v3, 0x0

    .line 172
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    .line 173
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 179
    :cond_1
    return-void

    .end local v0           #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .end local v2           #vibrateInSilent:Z
    .end local v3           #vibrateSetting:I
    .end local v4           #ringerMode:I
    .end local v6           #i:I
    :cond_2
    move v2, v5

    .line 154
    goto :goto_0

    .line 163
    .restart local v2       #vibrateInSilent:Z
    .restart local v3       #vibrateSetting:I
    .restart local v4       #ringerMode:I
    :cond_3
    if-nez v2, :cond_4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 164
    const/4 v2, 0x1

    .line 165
    if-nez v3, :cond_0

    .line 166
    const/4 v3, 0x2

    goto :goto_1

    .line 168
    :cond_4
    if-eqz v2, :cond_0

    if-ne v4, v1, :cond_0

    .line 169
    const/4 v3, 0x2

    goto :goto_1

    .line 173
    .restart local v0       #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .restart local v6       #i:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private updateSettings(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 137
    const-string v2, "expanded_ring_mode"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 140
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 149
    :cond_1
    return-void

    .line 144
    :cond_2
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings(Landroid/content/ContentResolver;)V

    .line 124
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings(Landroid/content/ContentResolver;)V

    .line 67
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 100
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 101
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 102
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 105
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 106
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    aget-object v0, v1, v2

    .line 109
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->execute(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->findCurrentState(Landroid/content/Context;)V

    .line 72
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 96
    :cond_0
    return-void

    .line 74
    .end local v0           #i:I
    :pswitch_0
    const v1, 0x7f02008f

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 75
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 78
    :pswitch_1
    const v1, 0x7f02010e

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 79
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 82
    :pswitch_2
    const v1, 0x7f02008b

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 83
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 86
    :pswitch_3
    const v1, 0x7f02008c

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 87
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 90
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
