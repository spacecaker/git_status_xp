.class Lcom/android/settings/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    const-string v3, "ring_volume"

    invoke-virtual {v1, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/RingerVolumePreference;

    #setter for: Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;
    invoke-static {v2, v1}, Lcom/android/settings/SoundSettings;->access$102(Lcom/android/settings/SoundSettings;Lcom/android/settings/RingerVolumePreference;)Lcom/android/settings/RingerVolumePreference;

    .line 93
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/RingerVolumePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 94
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    const/4 v2, 0x0

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;Z)V

    .line 101
    :cond_1
    return-void
.end method
