.class Landroid/view/VolumePanel$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "onView"
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$000(Landroid/view/VolumePanel;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 144
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
