.class Lcom/iLoong/launcher/Desktop3D/ap;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->c:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->d:I

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "shortcutgroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    goto :goto_0

    :cond_2
    const-string v0, "widget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->c:I

    goto :goto_0

    :cond_3
    const-string v0, "app"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->d:I

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "default_layout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "shortcutgroup"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/cg;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/cg;-><init>()V

    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/cg;->c:I

    const-string v1, "locate"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/cg;->a:Ljava/lang/String;

    const-string v1, "locate_value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "locate_value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/cg;->b:I

    :cond_2
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "hotseat"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "image"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "theme/hotseatbar/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "hotseatIntent"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "general_config"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    const-string v2, "default_explorer"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_57

    sput-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->y:Ljava/lang/String;

    :goto_1
    const-string v2, "default_uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_59

    sput-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->z:Ljava/lang/String;

    :goto_2
    const-string v2, "mainmenu_explorers_use_default_uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->A:Z

    :goto_3
    const-string v2, "install_change_wallpaper"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->B:Z

    :goto_4
    const-string v2, "mainmenu_addbackgroud"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->C:Z

    :goto_5
    const-string v2, "ThirdAPK_add_background"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->E:Z

    :goto_6
    const-string v2, "hide_online_theme_button"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->F:Z

    :goto_7
    const-string v2, "anti_aliasing"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->G:Z

    :goto_8
    const-string v2, "enable_scroll_to_widget"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->H:Z

    :goto_9
    const-string v2, "hide_add_shortcut_dialog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->I:Z

    :goto_a
    const-string v2, "dispose_cell_count"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->J:Z

    :goto_b
    const-string v2, "cellCountX"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "cellCountX"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->K:I

    :cond_6
    const-string v2, "cellCountY"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "cellCountY"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->L:I

    :cond_7
    const-string v2, "appbar_no_menu"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->M:Z

    :goto_c
    const-string v2, "appbar_bag_icon"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->N:Z

    :goto_d
    const-string v2, "display_widget_preview_hole"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ab:Z

    :goto_e
    const-string v2, "default_home_page"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "default_home_page"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->O:I

    :cond_8
    const-string v2, "default_workspace_pagecounts"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "default_workspace_pagecounts"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->P:I

    :cond_9
    const-string v2, "default_workspace_pagecount_min"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v2, "default_workspace_pagecount_min"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->Q:I

    :cond_a
    const-string v2, "default_workspace_pagecount_max"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, "default_workspace_pagecount_max"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->R:I

    :cond_b
    const-string v2, "disable_shake_wallpaper"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->S:Z

    :goto_f
    const-string v2, "default_open_shake_wallpaper"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->T:Z

    :goto_10
    const-string v2, "appbar_show_userapp_list"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    :goto_11
    const-string v2, "icon_title_font"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "icon_title_font"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->U:I

    :cond_c
    const-string v2, "widget_title_weight"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "widget_title_weight"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->ay:F

    :cond_d
    const-string v2, "show_page_edit_on_key_back"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->V:Z

    :goto_12
    const-string v2, "disable_x_effect"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    :goto_13
    const-string v2, "loadapp_in_background"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    :cond_e
    :goto_14
    const-string v2, "enable_icon_effect"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->Y:Z

    :goto_15
    const-string v2, "mainmenu_page_effect_id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v2, "mainmenu_page_effect_id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->Z:I

    :cond_f
    const-string v2, "desktop_page_effect_id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v2, "desktop_page_effect_id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->aa:I

    :cond_10
    const-string v2, "default_S3_theme"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ac:Z

    :goto_16
    const-string v2, "setupmenu_show_theme"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ad:Z

    :goto_17
    const-string v2, "custom_wallpapers_path"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_70

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ae:Ljava/lang/String;

    :goto_18
    const-string v2, "custom_default_wallpaper_name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_72

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->af:Ljava/lang/String;

    :goto_19
    const-string v2, "release_memory_after_pause"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ag:Z

    :cond_11
    :goto_1a
    const-string v2, "mainmenu_position"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_75

    const/4 v2, 0x4

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    :goto_1b
    const-string v2, "thirdapk_icon_scaleFactor"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_77

    const/high16 v2, 0x3f80

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    :goto_1c
    const-string v2, "trash_icon_pos"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v2, "trash_icon_pos"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    :cond_12
    const-string v2, "hot_dock_icon_number"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    const-string v2, "hot_dock_icon_number"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->aE:I

    :cond_13
    const-string v2, "sensor_delay_level"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const-string v2, "sensor_delay_level"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->as:I

    :cond_14
    const-string v2, "app_icon_size"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_78

    sput v5, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    :goto_1d
    const-string v2, "custom_virtual_path"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_79

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ah:Ljava/lang/String;

    :cond_15
    :goto_1e
    const-string v2, "custom_virtual_download_path"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7b

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->aj:Ljava/lang/String;

    :cond_16
    :goto_1f
    const-string v2, "custom_sys_shortcut_path"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7d

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->am:Ljava/lang/String;

    :cond_17
    :goto_20
    const-string v2, "show_progress_dialog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aq:Z

    :cond_18
    :goto_21
    const-string v2, "custom_virtual_icon"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_80

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ar:Z

    :cond_19
    :goto_22
    const-string v2, "hide_mainmenu_widget"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_81

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    :cond_1a
    :goto_23
    const-string v2, "hide_launcher_wallpapers"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_82

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->au:Z

    :cond_1b
    :goto_24
    const-string v2, "broadcast_state"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_83

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    :cond_1c
    :goto_25
    const-string v2, "applist_style_classic"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_84

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    :cond_1d
    :goto_26
    const-string v2, "hide_appbar"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    :cond_1e
    :goto_27
    const-string v2, "show_font_bg"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aA:Z

    :cond_1f
    :goto_28
    const-string v2, "font_double_line"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    :cond_20
    :goto_29
    const-string v2, "hide_backup_and_restore"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aC:Z

    :cond_21
    :goto_2a
    const-string v2, "mainmenu_add_black_ground"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aG:Z

    :cond_22
    :goto_2b
    const-string v2, "hotseatbar_browser_special_name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    :cond_23
    :goto_2c
    const-string v2, "pop_setupmenu_style"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_8b

    const-string v2, "popmenu_style"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    const-string v2, "popmenu_style"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    :cond_24
    :goto_2d
    const-string v2, "click_indicator_enter_pageselect"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8c

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    :cond_25
    :goto_2e
    const-string v2, "hotseat_title_no_background"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aJ:Z

    :cond_26
    :goto_2f
    const-string v2, "hotseat_icon_pos_fixed"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8e

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aK:Z

    :cond_27
    :goto_30
    const-string v2, "workspace_longclick_display_contacts"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8f

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aL:Z

    :cond_28
    :goto_31
    const-string v2, "mainmenu_widget_display_contacts"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aM:Z

    :cond_29
    :goto_32
    const-string v2, "hide_desktop_setup"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_91

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aN:Z

    sput v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    :cond_2a
    :goto_33
    const-string v2, "enable_service"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_92

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aO:Z

    :cond_2b
    :goto_34
    const-string v2, "show_widget_shortcut_bg"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_93

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    :cond_2c
    :goto_35
    const-string v2, "widget_shortcut_lefttop"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_94

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    :cond_2d
    :goto_36
    const-string v2, "hide_remove_theme_button"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_95

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aR:Z

    :cond_2e
    :goto_37
    const-string v2, "hotseat_style_ex"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_96

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    :cond_2f
    :goto_38
    const-string v2, "hotseat_hide_title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_97

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    :cond_30
    :goto_39
    const-string v2, "widget_shortcut_title_top"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_98

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    :cond_31
    :goto_3a
    const-string v2, "hide_home_button"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aV:Z

    :cond_32
    :goto_3b
    const-string v2, "setupmenu_show_clear"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9a

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aW:Z

    :cond_33
    :goto_3c
    const-string v2, "disable_double_click"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aX:Z

    :cond_34
    :goto_3d
    const-string v2, "hide_title_bg_shadow"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    :cond_35
    :goto_3e
    const-string v2, "hotseat_app_title_colorful"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9d

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aZ:Z

    :cond_36
    :goto_3f
    const-string v2, "hotseat_app_title_r"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string v2, "hotseat_app_title_r"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->ba:I

    :cond_37
    const-string v2, "hotseat_app_title_g"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    const-string v2, "hotseat_app_title_g"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->bb:I

    :cond_38
    const-string v2, "hotseat_app_title_b"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    const-string v2, "hotseat_app_title_b"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->bc:I

    :cond_39
    const-string v2, "hotseat_app_title_a"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    const-string v2, "hotseat_app_title_a"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->bd:I

    :cond_3a
    const-string v2, "install_apk_delay"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    const-string v2, "install_apk_delay"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->bm:I

    :cond_3b
    const-string v2, "show_missed_call_sms"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9e

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->be:Z

    :cond_3c
    :goto_40
    const-string v2, "call_component_name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->bf:Ljava/lang/String;

    :cond_3d
    const-string v2, "title_style_bold"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9f

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    :cond_3e
    :goto_41
    const-string v2, "disable_theme_preview_tween"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bh:Z

    :cond_3f
    :goto_42
    const-string v2, "menu_wyd"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bi:Z

    :cond_40
    :goto_43
    const-string v2, "hotseatbar_no_panel"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bj:Z

    :cond_41
    :goto_44
    const-string v2, "empty_page_add_reminder"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bn:Z

    :cond_42
    :goto_45
    const-string v2, "reminder_font"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string v2, "reminder_font"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->bo:I

    :cond_43
    const-string v2, "appbar_widgets_special_name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bp:Z

    :cond_44
    :goto_46
    const-string v2, "disable_vibrator"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a5

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bq:Z

    :cond_45
    :goto_47
    const-string v2, "default_close_vibrator"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a6

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->br:Z

    :cond_46
    :goto_48
    const-string v2, "restart_when_orientation_change"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a7

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bs:Z

    :cond_47
    :goto_49
    const-string v2, "keypad_event_of_focus"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a8

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    :cond_48
    :goto_4a
    const-string v2, "reduce_load_priority"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a9

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bt:Z

    :cond_49
    :goto_4b
    const-string v2, "widget_revise_complete"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_aa

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bu:Z

    :cond_4a
    :goto_4c
    const-string v2, "wallpaper_has_edage"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ab

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bv:Z

    :cond_4b
    :goto_4d
    const-string v0, "mainmenu_longclick_pageedit"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->a:Z

    :cond_4c
    const-string v0, "hotseat_disable_make_folder"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bw:Z

    :cond_4d
    const-string v0, "hotseat_title_disable_click"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bx:Z

    :cond_4e
    const-string v0, "bjx_sale_log"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->by:Z

    :cond_4f
    const-string v0, "add_desktop_list_font_set_color"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bz:Z

    :cond_50
    const-string v0, "add_desktop_list_font_color"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v0, "add_desktop_list_font_color"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iLoong/launcher/Desktop3D/cb;->bA:I

    :cond_51
    const-string v0, "desktop_hide_frame"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bB:Z

    :cond_52
    const-string v0, "appbar_font_bigger"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bC:Z

    :cond_53
    const-string v0, "disable_move_wallpaper"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bF:Z

    :cond_54
    const-string v0, "cancel_dialog_last"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    if-eqz v0, :cond_55

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aq:Z

    :cond_55
    const-string v0, "mainmenu_inout_no_anim"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    :cond_56
    const-string v0, "folder_no_dragon"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bH:Z

    goto/16 :goto_0

    :cond_57
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    sput-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->y:Ljava/lang/String;

    goto/16 :goto_1

    :cond_58
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->y:Ljava/lang/String;

    goto/16 :goto_1

    :cond_59
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    sput-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->z:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5a
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->z:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5b
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->A:Z

    goto/16 :goto_3

    :cond_5c
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->B:Z

    goto/16 :goto_4

    :cond_5d
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->C:Z

    goto/16 :goto_5

    :cond_5e
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->E:Z

    goto/16 :goto_6

    :cond_5f
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->F:Z

    goto/16 :goto_7

    :cond_60
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->G:Z

    goto/16 :goto_8

    :cond_61
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->H:Z

    goto/16 :goto_9

    :cond_62
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->I:Z

    goto/16 :goto_a

    :cond_63
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->J:Z

    goto/16 :goto_b

    :cond_64
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->M:Z

    goto/16 :goto_c

    :cond_65
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->N:Z

    goto/16 :goto_d

    :cond_66
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ab:Z

    goto/16 :goto_e

    :cond_67
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->S:Z

    goto/16 :goto_f

    :cond_68
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->T:Z

    goto/16 :goto_10

    :cond_69
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    goto/16 :goto_11

    :cond_6a
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->V:Z

    goto/16 :goto_12

    :cond_6b
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    goto/16 :goto_13

    :cond_6c
    if-eqz v2, :cond_e

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    goto/16 :goto_14

    :cond_6d
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->Y:Z

    goto/16 :goto_15

    :cond_6e
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ac:Z

    goto/16 :goto_16

    :cond_6f
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ad:Z

    goto/16 :goto_17

    :cond_70
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ae:Ljava/lang/String;

    goto/16 :goto_18

    :cond_71
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ae:Ljava/lang/String;

    goto/16 :goto_18

    :cond_72
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->af:Ljava/lang/String;

    goto/16 :goto_19

    :cond_73
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->af:Ljava/lang/String;

    goto/16 :goto_19

    :cond_74
    if-eqz v2, :cond_11

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ag:Z

    goto/16 :goto_1a

    :cond_75
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x4

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    goto/16 :goto_1b

    :cond_76
    sput v6, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    goto/16 :goto_1b

    :cond_77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    goto/16 :goto_1c

    :cond_78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    goto/16 :goto_1d

    :cond_79
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ah:Ljava/lang/String;

    goto/16 :goto_1e

    :cond_7a
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ah:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/cb;->ah:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ai:Z

    goto/16 :goto_1e

    :cond_7b
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->aj:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_7c
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->aj:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/cb;->aj:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ak:Z

    goto/16 :goto_1f

    :cond_7d
    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    const-string v2, ""

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->am:Ljava/lang/String;

    goto/16 :goto_20

    :cond_7e
    sput-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->am:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/cb;->am:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->an:Z

    goto/16 :goto_20

    :cond_7f
    if-eqz v2, :cond_18

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aq:Z

    goto/16 :goto_21

    :cond_80
    if-eqz v2, :cond_19

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ar:Z

    goto/16 :goto_22

    :cond_81
    if-eqz v2, :cond_1a

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    goto/16 :goto_23

    :cond_82
    if-eqz v2, :cond_1b

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->au:Z

    goto/16 :goto_24

    :cond_83
    if-eqz v2, :cond_1c

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    goto/16 :goto_25

    :cond_84
    if-eqz v2, :cond_1d

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    sput v6, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    goto/16 :goto_26

    :cond_85
    if-eqz v2, :cond_1e

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    goto/16 :goto_27

    :cond_86
    if-eqz v2, :cond_1f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aA:Z

    goto/16 :goto_28

    :cond_87
    if-eqz v2, :cond_20

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    goto/16 :goto_29

    :cond_88
    if-eqz v2, :cond_21

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aC:Z

    goto/16 :goto_2a

    :cond_89
    if-eqz v2, :cond_22

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aG:Z

    goto/16 :goto_2b

    :cond_8a
    if-eqz v2, :cond_23

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    goto/16 :goto_2c

    :cond_8b
    const-string v2, "pop_setupmenu_style"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    goto/16 :goto_2d

    :cond_8c
    if-eqz v2, :cond_25

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    goto/16 :goto_2e

    :cond_8d
    if-eqz v2, :cond_26

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aJ:Z

    goto/16 :goto_2f

    :cond_8e
    if-eqz v2, :cond_27

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aK:Z

    goto/16 :goto_30

    :cond_8f
    if-eqz v2, :cond_28

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aL:Z

    goto/16 :goto_31

    :cond_90
    if-eqz v2, :cond_29

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aM:Z

    goto/16 :goto_32

    :cond_91
    if-eqz v2, :cond_2a

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aN:Z

    goto/16 :goto_33

    :cond_92
    if-eqz v2, :cond_2b

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aO:Z

    goto/16 :goto_34

    :cond_93
    if-eqz v2, :cond_2c

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    goto/16 :goto_35

    :cond_94
    if-eqz v2, :cond_2d

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    goto/16 :goto_36

    :cond_95
    if-eqz v2, :cond_2e

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aR:Z

    goto/16 :goto_37

    :cond_96
    if-eqz v2, :cond_2f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    goto/16 :goto_38

    :cond_97
    if-eqz v2, :cond_30

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    goto/16 :goto_39

    :cond_98
    if-eqz v2, :cond_31

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    goto/16 :goto_3a

    :cond_99
    if-eqz v2, :cond_32

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aV:Z

    goto/16 :goto_3b

    :cond_9a
    if-eqz v2, :cond_33

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aW:Z

    goto/16 :goto_3c

    :cond_9b
    if-eqz v2, :cond_34

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aX:Z

    goto/16 :goto_3d

    :cond_9c
    if-eqz v2, :cond_35

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    goto/16 :goto_3e

    :cond_9d
    if-eqz v2, :cond_36

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aZ:Z

    goto/16 :goto_3f

    :cond_9e
    if-eqz v2, :cond_3c

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->be:Z

    goto/16 :goto_40

    :cond_9f
    if-eqz v2, :cond_3e

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    goto/16 :goto_41

    :cond_a0
    if-eqz v2, :cond_3f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bh:Z

    goto/16 :goto_42

    :cond_a1
    if-eqz v2, :cond_40

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bi:Z

    goto/16 :goto_43

    :cond_a2
    if-eqz v2, :cond_41

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bj:Z

    goto/16 :goto_44

    :cond_a3
    if-eqz v2, :cond_42

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bn:Z

    goto/16 :goto_45

    :cond_a4
    if-eqz v2, :cond_44

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bp:Z

    goto/16 :goto_46

    :cond_a5
    if-eqz v2, :cond_45

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bq:Z

    goto/16 :goto_47

    :cond_a6
    if-eqz v2, :cond_46

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->br:Z

    goto/16 :goto_48

    :cond_a7
    if-eqz v2, :cond_47

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bs:Z

    goto/16 :goto_49

    :cond_a8
    if-eqz v2, :cond_48

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    goto/16 :goto_4a

    :cond_a9
    if-eqz v2, :cond_49

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bt:Z

    goto/16 :goto_4b

    :cond_aa
    if-eqz v2, :cond_4a

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bu:Z

    goto/16 :goto_4c

    :cond_ab
    if-eqz v2, :cond_4b

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bv:Z

    goto/16 :goto_4d

    :cond_ac
    const-string v2, "app_sort"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    const-string v2, "show"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ad

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->D:Z

    goto/16 :goto_0

    :cond_ad
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->D:Z

    goto/16 :goto_0

    :cond_ae
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->D:Z

    goto/16 :goto_0

    :cond_af
    const-string v2, "show_app"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->t:Ljava/util/ArrayList;

    const-string v1, "pkgname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b0
    const-string v2, "hide_app"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->u:Ljava/util/ArrayList;

    const-string v1, "compname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b1
    const-string v2, "app"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/bn;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/bn;-><init>()V

    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/bn;->a:I

    const-string v1, "pkgname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bn;->b:Ljava/lang/String;

    const-string v1, "componentName"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bn;->c:Ljava/lang/String;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ap;->d:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b2
    const-string v2, "mm_settting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const-string v1, "test"

    const-string v2, "add MM_SETTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->w:I

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->x:[Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_b3
    const-string v2, "icon"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/be;

    invoke-direct {v2}, Lcom/iLoong/launcher/Desktop3D/be;-><init>()V

    const-string v3, "dup"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b5

    iput-boolean v0, v2, Lcom/iLoong/launcher/Desktop3D/be;->d:Z

    :goto_4f
    const-string v1, "pkgname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->a:Ljava/lang/String;

    const-string v1, "image"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->b:Ljava/lang/String;

    const-string v1, "componentName"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->c:Ljava/lang/String;

    iget-object v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->c:Ljava/lang/String;

    if-nez v1, :cond_b4

    const-string v1, ""

    iput-object v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->c:Ljava/lang/String;

    :cond_b4
    iput-boolean v0, v2, Lcom/iLoong/launcher/Desktop3D/be;->e:Z

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b5
    iput-boolean v1, v2, Lcom/iLoong/launcher/Desktop3D/be;->d:Z

    goto :goto_4f

    :cond_b6
    const-string v2, "widget"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/bg;

    invoke-direct {v2}, Lcom/iLoong/launcher/Desktop3D/bg;-><init>()V

    const-string v3, "id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->c:I

    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/cb;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->d:Ljava/lang/String;

    const-string v3, "locate"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->a:Ljava/lang/String;

    const-string v3, "locate_value"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->b:I

    const-string v3, "pkgname"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->e:Ljava/lang/String;

    const-string v3, "image"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->f:Ljava/lang/String;

    const-string v3, "apkname"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->g:Ljava/lang/String;

    const-string v3, "width"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->i:I

    const-string v3, "height"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->j:I

    const-string v3, "customID"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->h:Ljava/lang/String;

    const-string v3, "desktop"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b7

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    iput-boolean v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->p:Z

    :goto_50
    const-string v1, "spanx"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b8

    const-string v1, "spanx"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/iLoong/launcher/Desktop3D/bg;->k:I

    :goto_51
    const-string v1, "spany"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    const-string v0, "spany"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->l:I

    :goto_52
    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->m:I

    :goto_53
    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bb

    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->n:I

    :goto_54
    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/iLoong/launcher/Desktop3D/bg;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->k:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b7
    iput-boolean v1, v2, Lcom/iLoong/launcher/Desktop3D/bg;->p:Z

    goto/16 :goto_50

    :cond_b8
    iput v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->k:I

    goto/16 :goto_51

    :cond_b9
    iput v0, v2, Lcom/iLoong/launcher/Desktop3D/bg;->l:I

    goto :goto_52

    :cond_ba
    iput v5, v2, Lcom/iLoong/launcher/Desktop3D/bg;->m:I

    goto :goto_53

    :cond_bb
    iput v5, v2, Lcom/iLoong/launcher/Desktop3D/bg;->n:I

    goto :goto_54

    :cond_bc
    const-string v2, "virtueIcon"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/al;

    invoke-direct {v1}, Lcom/iLoong/launcher/Desktop3D/al;-><init>()V

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/cb;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/al;->e:Ljava/lang/String;

    const-string v2, "locate"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/al;->a:Ljava/lang/String;

    const-string v2, "locate_value"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bd

    const-string v0, "locate_value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->b:I

    :goto_55
    const-string v0, "pkgname"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->f:Ljava/lang/String;

    const-string v0, "componentName"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->g:Ljava/lang/String;

    const-string v0, "image"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->h:Ljava/lang/String;

    const-string v0, "apkname"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->i:Ljava/lang/String;

    const-string v0, "customID"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->j:Ljava/lang/String;

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_be

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->m:I

    :goto_56
    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->n:I

    :goto_57
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->l:I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_bd
    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/al;->b:I

    goto :goto_55

    :cond_be
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/al;->m:I

    goto :goto_56

    :cond_bf
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/al;->n:I

    goto :goto_57

    :cond_c0
    const-string v2, "folder"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/cc;

    invoke-direct {v1}, Lcom/iLoong/launcher/Desktop3D/cc;-><init>()V

    const-string v2, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/iLoong/launcher/Desktop3D/cc;->a:I

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/cb;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/cc;->b:Ljava/lang/String;

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/cc;->c:I

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/cc;->d:I

    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/cc;->e:I

    iget v0, v1, Lcom/iLoong/launcher/Desktop3D/cc;->a:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_c1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    :cond_c1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c2
    const-string v2, "item"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/bp;

    invoke-direct {v2}, Lcom/iLoong/launcher/Desktop3D/bp;-><init>()V

    const-string v3, "id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->a:I

    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/cb;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->b:Ljava/lang/String;

    const-string v3, "image"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->e:Ljava/lang/String;

    const-string v3, "pkgname"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->c:Ljava/lang/String;

    const-string v3, "componentName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->d:Ljava/lang/String;

    const-string v3, "cellX"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c7

    const-string v3, "cellX"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->h:I

    :goto_58
    const-string v3, "cellY"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c8

    const-string v3, "cellY"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->i:I

    :goto_59
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    iput v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->j:I

    iget v3, v2, Lcom/iLoong/launcher/Desktop3D/bp;->j:I

    if-eq v3, v5, :cond_c3

    move v0, v1

    :cond_c3
    const-string v3, "cls_name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c4

    const-string v3, "cls_name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Contact3DShortcut"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iput-boolean v1, v2, Lcom/iLoong/launcher/Desktop3D/bp;->g:Z

    :cond_c4
    if-eqz v0, :cond_c9

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_c5

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    :cond_c5
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cc;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cc;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_c6

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cc;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/cc;->f:Ljava/util/ArrayList;

    :cond_c6
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cc;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cc;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c7
    iput v5, v2, Lcom/iLoong/launcher/Desktop3D/bp;->h:I

    goto/16 :goto_58

    :cond_c8
    iput v5, v2, Lcom/iLoong/launcher/Desktop3D/bp;->i:I

    goto/16 :goto_59

    :cond_c9
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_ca

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/iLoong/launcher/Desktop3D/cg;->d:Ljava/util/ArrayList;

    :cond_ca
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/cg;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/cg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_cb
    const-string v1, "syswidget"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/ce;

    invoke-direct {v1}, Lcom/iLoong/launcher/Desktop3D/ce;-><init>()V

    const-string v2, "packageName"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ce;->a:Ljava/lang/String;

    const-string v2, "className"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ce;->b:Ljava/lang/String;

    const-string v2, "screen"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cc

    const-string v0, "screen"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->c:I

    :goto_5a
    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cd

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->d:I

    :goto_5b
    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ce

    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->e:I

    :goto_5c
    const-string v0, "spanX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cf

    const-string v0, "spanX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->f:I

    :goto_5d
    const-string v0, "spanY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d0

    const-string v0, "spanY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->g:I

    :goto_5e
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_cc
    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ce;->c:I

    goto :goto_5a

    :cond_cd
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ce;->d:I

    goto :goto_5b

    :cond_ce
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ce;->e:I

    goto :goto_5c

    :cond_cf
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ce;->f:I

    goto :goto_5d

    :cond_d0
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ce;->g:I

    goto :goto_5e

    :cond_d1
    const-string v1, "sys_shortcut"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/ba;

    invoke-direct {v1}, Lcom/iLoong/launcher/Desktop3D/ba;-><init>()V

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ba;->a:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ba;->b:Ljava/lang/String;

    const-string v2, "className"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ba;->c:Ljava/lang/String;

    const-string v2, "image"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/ba;->d:Ljava/lang/String;

    const-string v2, "screen"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d2

    const-string v0, "screen"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ba;->e:I

    :goto_5f
    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d3

    const-string v0, "cellX"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ba;->f:I

    :goto_60
    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d4

    const-string v0, "cellY"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ba;->g:I

    :goto_61
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d2
    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/ba;->e:I

    goto :goto_5f

    :cond_d3
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ba;->f:I

    goto :goto_60

    :cond_d4
    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ba;->g:I

    goto :goto_61
.end method
