.class Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;
.super Landroid/os/Handler;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;->val$this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 518
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 520
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$100(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V

    goto :goto_0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleLiveWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$200(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
