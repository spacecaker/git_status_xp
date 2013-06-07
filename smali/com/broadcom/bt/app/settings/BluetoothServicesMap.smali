.class public Lcom/broadcom/bt/app/settings/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 10
    .parameter "ctx"
    .parameter "uuid"
    .parameter "listManager"

    .prologue
    const v8, 0x7f080581

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "BluetoothServicesMap"

    .line 70
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, uuidStr:Ljava/lang/String;
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v3, :cond_0

    .line 207
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v4, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, uuidPrefixStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 84
    .local v1, uuidPrefix:I
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 206
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    const v4, 0x7f080564

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :sswitch_1
    const v4, 0x7f080565

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_2
    const v4, 0x7f080566

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_3
    const v4, 0x7f080567

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :sswitch_4
    const v4, 0x7f080568

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :sswitch_5
    const v4, 0x7f080569

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :sswitch_6
    const v4, 0x7f08056a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :sswitch_7
    const v4, 0x7f08056b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :sswitch_8
    const v4, 0x7f08056c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :sswitch_9
    const v4, 0x7f08056e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :sswitch_a
    const v4, 0x7f08056f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :sswitch_b
    const v4, 0x7f080570

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :sswitch_c
    const v4, 0x7f080571

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :sswitch_d
    const v4, 0x7f080572

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :sswitch_e
    const v4, 0x7f080573

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :sswitch_f
    const v4, 0x7f08056d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :sswitch_10
    const v4, 0x7f080574

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :sswitch_11
    const v4, 0x7f080575

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :sswitch_12
    const v4, 0x7f080576

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :sswitch_13
    const v4, 0x7f080577

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :sswitch_14
    const v4, 0x7f080578

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :sswitch_15
    const v4, 0x7f080579

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :sswitch_16
    const v4, 0x7f08057a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_17
    const v4, 0x7f08057b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :sswitch_18
    const v4, 0x7f08057c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :sswitch_19
    const v4, 0x7f08057d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :sswitch_1a
    const v4, 0x7f08057e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :sswitch_1b
    const v4, 0x7f08057f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :sswitch_1c
    const v4, 0x7f080580

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x1101 -> :sswitch_d
        0x1102 -> :sswitch_19
        0x1103 -> :sswitch_e
        0x1104 -> :sswitch_15
        0x1105 -> :sswitch_9
        0x1106 -> :sswitch_a
        0x1108 -> :sswitch_3
        0x1109 -> :sswitch_16
        0x110a -> :sswitch_0
        0x110b -> :sswitch_1
        0x110c -> :sswitch_8
        0x110d -> :sswitch_2
        0x110e -> :sswitch_7
        0x1110 -> :sswitch_17
        0x1111 -> :sswitch_18
        0x1112 -> :sswitch_4
        0x1115 -> :sswitch_12
        0x1116 -> :sswitch_13
        0x1117 -> :sswitch_14
        0x111a -> :sswitch_1a
        0x111e -> :sswitch_5
        0x111f -> :sswitch_6
        0x1122 -> :sswitch_c
        0x1124 -> :sswitch_11
        0x112d -> :sswitch_1c
        0x1130 -> :sswitch_b
        0x1200 -> :sswitch_f
        0x1203 -> :sswitch_10
        0x1305 -> :sswitch_1b
    .end sparse-switch
.end method
