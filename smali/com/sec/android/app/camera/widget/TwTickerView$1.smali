.class Lcom/sec/android/app/camera/widget/TwTickerView$1;
.super Landroid/os/Handler;
.source "TwTickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwTickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwTickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$200(Lcom/sec/android/app/camera/widget/TwTickerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$000(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mTextLength:I
    invoke-static {v4}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$100(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, temp:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$008(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #setter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$002(Lcom/sec/android/app/camera/widget/TwTickerView;I)I

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #setter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$302(Lcom/sec/android/app/camera/widget/TwTickerView;Z)Z

    .line 52
    const/16 v0, 0x190

    .line 53
    .local v0, delay:I
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$000(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 54
    mul-int/lit8 v0, v0, 0x4

    .line 56
    :cond_1
    int-to-long v2, v0

    invoke-virtual {p0, v5, v2, v3}, Lcom/sec/android/app/camera/widget/TwTickerView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
