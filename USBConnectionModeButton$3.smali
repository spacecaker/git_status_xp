.class Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$3;
.super Ljava/lang/Object;
.source "USBConnectionModeButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->changeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$3;->this$0:Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 50
    return-void
.end method
