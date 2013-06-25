.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 863
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 864
    return-void
.end method
