.class public Lcom/iLoong/launcher/cling/Introduction;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setLauncher(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/Introduction;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-void
.end method
