.class Lcom/sec/android/app/twlauncher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

.field final synthetic val$addedFinal:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$1;->val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$1;->val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    .line 536
    return-void
.end method
