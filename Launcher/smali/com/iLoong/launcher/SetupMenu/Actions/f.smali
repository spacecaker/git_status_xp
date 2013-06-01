.class Lcom/iLoong/launcher/SetupMenu/Actions/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/f;->a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/f;->a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/f;->a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a(Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;)V

    return-void
.end method
