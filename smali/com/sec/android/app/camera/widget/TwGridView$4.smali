.class Lcom/sec/android/app/camera/widget/TwGridView$4;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwGridView;->makeDescriptionOkPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$4;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 523
    sparse-switch p2, :sswitch_data_0

    .line 534
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 532
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
