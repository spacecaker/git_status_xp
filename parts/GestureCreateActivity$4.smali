.class Lcom/lidroid/parts/GestureCreateActivity$4;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/parts/GestureCreateActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/GestureCreateActivity;

.field final synthetic val$overlay:Landroid/gesture/GestureOverlayView;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/GestureCreateActivity;Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lidroid/parts/GestureCreateActivity$4;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    iput-object p2, p0, Lcom/lidroid/parts/GestureCreateActivity$4;->val$overlay:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$4;->val$overlay:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity$4;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    #getter for: Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v1}, Lcom/lidroid/parts/GestureCreateActivity;->access$100(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setGesture(Landroid/gesture/Gesture;)V

    .line 164
    return-void
.end method
