.class Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;
.super Ljava/lang/Object;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonTag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

.field public toggleId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/SettingsView;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;->toggleId:I

    .line 117
    return-void
.end method
