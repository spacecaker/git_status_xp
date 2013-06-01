.class public Lcom/iLoong/launcher/theme/ThemeManagerActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/iLoong/launcher/theme/ThemesDesktop;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "ThemeManagerActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/iLoong/launcher/theme/ThemesDesktop;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/theme/ThemesDesktop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->a:Lcom/iLoong/launcher/theme/ThemesDesktop;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->a:Lcom/iLoong/launcher/theme/ThemesDesktop;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->a:Lcom/iLoong/launcher/theme/ThemesDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemesDesktop;->a()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->b(Landroid/app/Activity;)V

    const-string v0, "ThemeManagerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "ThemeManagerActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeManagerActivity;->a:Lcom/iLoong/launcher/theme/ThemesDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemesDesktop;->b()V

    return-void
.end method
