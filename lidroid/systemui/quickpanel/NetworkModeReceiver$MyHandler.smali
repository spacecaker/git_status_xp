.class Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;


# direct methods
.method private constructor <init>(Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;->this$0:Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;-><init>(Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 48
    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
