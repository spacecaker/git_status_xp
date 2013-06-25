.class public Landroid/text/method/QwertyKeyListener$CapsStatusRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/QwertyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CapsStatusRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/QwertyKeyListener;


# direct methods
.method public constructor <init>(Landroid/text/method/QwertyKeyListener;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener$CapsStatusRequestReceiver;->this$0:Landroid/text/method/QwertyKeyListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "caps_status_action"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Landroid/text/method/QwertyKeyListener;->access$002(Z)Z

    .line 58
    return-void
.end method
