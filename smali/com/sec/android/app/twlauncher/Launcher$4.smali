.class Lcom/sec/android/app/twlauncher/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2001
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$4;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2004
    :cond_1
    return-void
.end method
