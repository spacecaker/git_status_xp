.class Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;
.super Landroid/database/ContentObserver;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    #calls: Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    .line 28
    return-void
.end method
