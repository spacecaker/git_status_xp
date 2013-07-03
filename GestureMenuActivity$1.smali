.class Lcom/lidroid/parts/GestureMenuActivity$1;
.super Ljava/lang/Object;
.source "GestureMenuActivity.java"

# interfaces
.implements Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/GestureMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/GestureMenuActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/GestureMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lidroid/parts/GestureMenuActivity$1;->this$0:Lcom/lidroid/parts/GestureMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity$1;->this$0:Lcom/lidroid/parts/GestureMenuActivity;

    invoke-virtual {v0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_gestures_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity$1;->this$0:Lcom/lidroid/parts/GestureMenuActivity;

    #getter for: Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/lidroid/parts/GestureMenuActivity;->access$000(Lcom/lidroid/parts/GestureMenuActivity;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public colorUpdate(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 151
    return-void
.end method
