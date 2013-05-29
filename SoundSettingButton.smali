.class public final Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "SoundSettingButton.java"


# static fields
.field private static PADDING_TOP_FOR_DOUBLE_LINE:I

.field private static PADDING_TOP_FOR_SINGLE_LINE:I

.field private static mSoundProfile:I

.field private static mSoundText:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_SINGLE_LINE:I

    .line 27
    sput v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_DOUBLE_LINE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    new-instance v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_SINGLE_LINE:I

    .line 60
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_DOUBLE_LINE:I

    .line 66
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    return-void
.end method

.method private updateIconsAndText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 108
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v5, 0x0

    .local v5, statusIconRes:I
    const/4 v3, 0x0

    .line 109
    .local v3, soundText:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a000f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0011

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 113
    .local v4, statusIcon:Landroid/widget/ImageView;
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_SINGLE_LINE:I

    invoke-virtual {p0, v8, v6, v8, v8}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 163
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 166
    sput v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    .line 167
    return-void

    .line 143
    :pswitch_0
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-nez v6, :cond_0

    .line 144
    const v1, 0x7f02000c

    .line 148
    :goto_1
    const v3, 0x7f08001b

    .line 149
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_DOUBLE_LINE:I

    invoke-virtual {p0, v8, v6, v8, v8}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 150
    const v5, 0x7f02001b

    .line 151
    goto :goto_0

    .line 146
    :cond_0
    const v1, 0x7f02000e

    goto :goto_1

    .line 153
    :pswitch_1
    const/4 v6, 0x1

    sget v7, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    if-ne v6, v7, :cond_1

    .line 154
    const v1, 0x7f02000d

    .line 158
    :goto_2
    const v3, 0x7f08001b

    .line 159
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->PADDING_TOP_FOR_DOUBLE_LINE:I

    invoke-virtual {p0, v8, v6, v8, v8}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 160
    const v5, 0x7f02001a

    goto :goto_0

    .line 156
    :cond_1
    const v1, 0x7f02000b

    goto :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x2

    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateIconsAndText()V

    .line 105
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 201
    return-void

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    .line 184
    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 192
    goto :goto_0

    .line 195
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 176
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setSoundEffectsEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 171
    return-void
.end method
