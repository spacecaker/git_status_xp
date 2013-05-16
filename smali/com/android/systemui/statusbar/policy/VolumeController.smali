.class public Lcom/android/systemui/statusbar/policy/VolumeController;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# static fields
.field private static final STREAM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "StatusBar.VolumeController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mMute:Z

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 3
    .parameter "context"
    .parameter "control"

    .prologue
    const/4 v2, 0x5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 43
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mMute:Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mVolume:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mVolume:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mMute:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 52
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 5
    .parameter "view"
    .parameter "tracking"
    .parameter "mute"
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    if-nez p2, :cond_0

    .line 56
    if-eqz p3, :cond_3

    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_1

    move v0, v1

    .line 59
    .local v0, vibeInSilent:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 67
    .end local v0           #vibeInSilent:Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 57
    goto :goto_0

    .restart local v0       #vibeInSilent:Z
    :cond_2
    move v1, v2

    .line 59
    goto :goto_1

    .line 63
    .end local v0           #vibeInSilent:Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-virtual {v1, v2, p4, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2
.end method
