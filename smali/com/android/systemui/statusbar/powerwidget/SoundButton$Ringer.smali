.class Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
.super Ljava/lang/Object;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ringer"
.end annotation


# instance fields
.field final mDoHapticFeedback:Z

.field final mRingerMode:I

.field final mVibrateInSilent:Z

.field final mVibrateSetting:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V
    .locals 0
    .parameter
    .parameter "vibrateInSilent"
    .parameter "vibrateSetting"
    .parameter "ringerMode"
    .parameter "doHapticFeedback"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    .line 195
    iput p3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    .line 196
    iput p4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    .line 197
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    .line 198
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 218
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 228
    .local v0, r:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_2

    move v2, v1

    .line 229
    goto :goto_0

    .line 230
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method execute(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "vibrate_in_silent"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #calls: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedback:Z

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 211
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 202
    goto :goto_0
.end method
