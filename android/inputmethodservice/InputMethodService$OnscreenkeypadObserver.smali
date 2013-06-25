.class Landroid/inputmethodservice/InputMethodService$OnscreenkeypadObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnscreenkeypadObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$OnscreenkeypadObserver;->this$0:Landroid/inputmethodservice/InputMethodService;

    .line 692
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 693
    const-string v0, "InputMethodService"

    const-string v1, "OnscreenkeypadObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 698
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 699
    const-string v0, "InputMethodService"

    const-string v1, "OnscreenkeypadObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$OnscreenkeypadObserver;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onscreen_keypad"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    :cond_0
    return-void
.end method
