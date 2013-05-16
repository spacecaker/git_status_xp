.class public Lcom/android/systemui/statusbar/policy/SoundController;
.super Landroid/content/BroadcastReceiver;
.source "SoundController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mSoundMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SoundController;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->getSoundMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mSoundMode:Z

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mSoundMode:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 44
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method

.method private getSoundMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 73
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return v1

    .line 77
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 61
    .local v0, am:Landroid/media/AudioManager;
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->getSoundMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
