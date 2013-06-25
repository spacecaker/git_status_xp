.class public interface abstract Lcom/sec/android/app/twlauncher/DragController$DragListener;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragListener"
.end annotation


# virtual methods
.method public abstract getDragAnimationXOffset(Landroid/view/View;)I
.end method

.method public abstract onDragEnd()V
.end method

.method public abstract onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
.end method
