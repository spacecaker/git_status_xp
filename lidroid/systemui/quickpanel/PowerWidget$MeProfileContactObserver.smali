.class Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeProfileContactObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 876
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 878
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 884
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateWidget()V

    .line 886
    return-void
.end method
