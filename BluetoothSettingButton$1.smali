.class Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, state:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;

    #calls: Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V

    .line 44
    return-void
.end method
