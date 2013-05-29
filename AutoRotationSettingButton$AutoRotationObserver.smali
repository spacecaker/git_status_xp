.class Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;
.super Landroid/database/ContentObserver;
.source "AutoRotationSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRotationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;

    #calls: Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;)V

    .line 31
    return-void
.end method
