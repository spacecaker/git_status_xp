.class Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, intentAction:Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->access$002(I)I

    .line 49
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;

    #calls: Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->access$200(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V

    .line 50
    return-void

    .line 41
    :cond_1
    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "android.media.EXTRA_VIBRATE_TYPE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, vibrateType:I
    if-nez v1, :cond_0

    .line 45
    const-string v2, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->access$102(I)I

    goto :goto_0
.end method
