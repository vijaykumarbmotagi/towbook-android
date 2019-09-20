.class Landroid/databinding/DataBinderMapperImpl;
.super Landroid/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_d

    .line 454
    sget-object v0, Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;->sKeys:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_d

    .line 457
    :cond_8
    sget-object v0, Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;->sKeys:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_d
    :goto_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 5

    sparse-switch p3, :sswitch_data_582

    const/4 p1, 0x0

    return-object p1

    .line 105
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_13

    .line 106
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    const-string v0, "layout/user_signature_0"

    .line 107
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 108
    new-instance p3, Lcom/towbook/mobile/databinding/UserSignatureBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/UserSignatureBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 110
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for user_signature is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :sswitch_38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_46

    .line 115
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    const-string v0, "layout/upload_work_list_0"

    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 117
    new-instance p3, Lcom/towbook/mobile/databinding/UploadWorkListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/UploadWorkListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 119
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for upload_work_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :sswitch_6b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_79

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    const-string v0, "layout/setup_overlay_permission_0"

    .line 170
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 171
    new-instance p3, Lcom/towbook/mobile/databinding/SetupOverlayPermissionBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/SetupOverlayPermissionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 173
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for setup_overlay_permission is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :sswitch_9e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ac

    .line 70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ac
    const-string v0, "layout/setup_location_permission_0"

    .line 71
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 72
    new-instance p3, Lcom/towbook/mobile/databinding/SetupLocationPermissionBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/SetupLocationPermissionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 74
    :cond_ba
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for setup_location_permission is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :sswitch_d1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_df

    .line 253
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_df
    const-string v0, "layout/row_contact_0"

    .line 254
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 255
    new-instance p3, Lcom/towbook/mobile/databinding/RowContactBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/RowContactBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 257
    :cond_ed
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for row_contact is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :sswitch_104
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_112

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_112
    const-string v0, "layout/photo_list_0"

    .line 191
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 192
    new-instance p3, Lcom/towbook/mobile/databinding/PhotoListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/PhotoListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 194
    :cond_120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for photo_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :sswitch_137
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_145

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_145
    const-string v0, "layout/payment_list_item_options_0"

    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 42
    new-instance p3, Lcom/towbook/mobile/databinding/PaymentListItemOptionsBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/PaymentListItemOptionsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 44
    :cond_153
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for payment_list_item_options is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :sswitch_16a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_178

    .line 217
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_178
    const-string v0, "layout/payment_list_item_0"

    .line 218
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 219
    new-instance p3, Lcom/towbook/mobile/databinding/PaymentListItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/PaymentListItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 221
    :cond_186
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for payment_list_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :sswitch_19d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1ab

    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ab
    const-string v0, "layout/payment_list_0"

    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 144
    new-instance p3, Lcom/towbook/mobile/databinding/PaymentListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/PaymentListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 146
    :cond_1b9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for payment_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :sswitch_1d0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1de

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1de
    const-string v0, "layout-land/on_scene_layout_0"

    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 60
    new-instance p3, Lcom/towbook/mobile/databinding/OnSceneLayoutBindingLandImpl;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/OnSceneLayoutBindingLandImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_1ec
    const-string v0, "layout/on_scene_layout_0"

    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 63
    new-instance p3, Lcom/towbook/mobile/databinding/OnSceneLayoutBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/OnSceneLayoutBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 65
    :cond_1fa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for on_scene_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :sswitch_211
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_21f

    .line 226
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21f
    const-string v0, "layout/notification_list_0"

    .line 227
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 228
    new-instance p3, Lcom/towbook/mobile/databinding/NotificationListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/NotificationListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 230
    :cond_22d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for notification_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :sswitch_244
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_252

    .line 97
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_252
    const-string v0, "layout/map_main_0"

    .line 98
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_260

    .line 99
    new-instance p3, Lcom/towbook/mobile/databinding/MapMainBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/MapMainBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 101
    :cond_260
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for map_main is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :sswitch_277
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_285

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_285
    const-string v0, "layout/digital_dispatch_list_item_options_0"

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    .line 15
    new-instance p3, Lcom/towbook/mobile/databinding/DigitalDispatchListItemOptionsBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/DigitalDispatchListItemOptionsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 17
    :cond_293
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for digital_dispatch_list_item_options is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :sswitch_2aa
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2b8

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b8
    const-string v0, "layout/digital_dispatch_list_item_0"

    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 126
    new-instance p3, Lcom/towbook/mobile/databinding/DigitalDispatchListItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/DigitalDispatchListItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 128
    :cond_2c6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for digital_dispatch_list_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :sswitch_2dd
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2eb

    .line 208
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2eb
    const-string v0, "layout/digital_dispatch_list_0"

    .line 209
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 210
    new-instance p3, Lcom/towbook/mobile/databinding/DigitalDispatchListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/DigitalDispatchListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 212
    :cond_2f9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for digital_dispatch_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :sswitch_310
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_31e

    .line 244
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31e
    const-string v0, "layout/camera_preview_layout_0"

    .line 245
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32c

    .line 246
    new-instance p3, Lcom/towbook/mobile/databinding/CameraPreviewLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/CameraPreviewLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 248
    :cond_32c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for camera_preview_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :sswitch_343
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_351

    .line 178
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_351
    const-string v0, "layout-land/camera_layout_0"

    .line 179
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 180
    new-instance p3, Lcom/towbook/mobile/databinding/CameraLayoutBindingLandImpl;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/CameraLayoutBindingLandImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_35f
    const-string v0, "layout/camera_layout_0"

    .line 182
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36d

    .line 183
    new-instance p3, Lcom/towbook/mobile/databinding/CameraLayoutBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/CameraLayoutBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 185
    :cond_36d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for camera_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :sswitch_384
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_392

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_392
    const-string v0, "layout/call_list_item_options_0"

    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 24
    new-instance p3, Lcom/towbook/mobile/databinding/CallListItemOptionsBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/CallListItemOptionsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 26
    :cond_3a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for call_list_item_options is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :sswitch_3b7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3c5

    .line 235
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c5
    const-string v0, "layout/account_private_property_view_0"

    .line 236
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    .line 237
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPrivatePropertyViewBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPrivatePropertyViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 239
    :cond_3d3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_private_property_view is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :sswitch_3ea
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3f8

    .line 151
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f8
    const-string v0, "layout/account_private_property_summary_0"

    .line 152
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_406

    .line 153
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPrivatePropertySummaryBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPrivatePropertySummaryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 155
    :cond_406
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_private_property_summary is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :sswitch_41d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_42b

    .line 199
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42b
    const-string v0, "layout/account_private_property_contacts_0"

    .line 200
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_439

    .line 201
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPrivatePropertyContactsBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPrivatePropertyContactsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 203
    :cond_439
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_private_property_contacts is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :sswitch_450
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_45e

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45e
    const-string v0, "layout/account_permit_view_0"

    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    .line 51
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPermitViewBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPermitViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 53
    :cond_46c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_permit_view is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :sswitch_483
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_491

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_491
    const-string v0, "layout/account_permit_list_0"

    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49f

    .line 33
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPermitListBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPermitListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 35
    :cond_49f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_permit_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :sswitch_4b6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4c4

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c4
    const-string v0, "layout/account_permit_item_0"

    .line 80
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d2

    .line 81
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPermitItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPermitItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 83
    :cond_4d2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_permit_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :sswitch_4e9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4f7

    .line 133
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f7
    const-string v0, "layout/account_permit_edit_0"

    .line 134
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_505

    .line 135
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPermitEditBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPermitEditBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 137
    :cond_505
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_permit_edit is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :sswitch_51c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_52a

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52a
    const-string v0, "layout/account_permit_address_0"

    .line 89
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_538

    .line 90
    new-instance p3, Lcom/towbook/mobile/databinding/AccountPermitAddressBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AccountPermitAddressBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 92
    :cond_538
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for account_permit_address is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :sswitch_54f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_55d

    .line 160
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55d
    const-string v0, "layout/aaaaaa_delete_0"

    .line 161
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56b

    .line 162
    new-instance p3, Lcom/towbook/mobile/databinding/AaaaaaDeleteBinding;

    invoke-direct {p3, p1, p2}, Lcom/towbook/mobile/databinding/AaaaaaDeleteBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 164
    :cond_56b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for aaaaaa_delete is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_582
    .sparse-switch
        0x7f0b0000 -> :sswitch_54f
        0x7f0b001f -> :sswitch_51c
        0x7f0b0020 -> :sswitch_4e9
        0x7f0b0022 -> :sswitch_4b6
        0x7f0b0023 -> :sswitch_483
        0x7f0b0024 -> :sswitch_450
        0x7f0b0026 -> :sswitch_41d
        0x7f0b0027 -> :sswitch_3ea
        0x7f0b0028 -> :sswitch_3b7
        0x7f0b0041 -> :sswitch_384
        0x7f0b004c -> :sswitch_343
        0x7f0b004f -> :sswitch_310
        0x7f0b0078 -> :sswitch_2dd
        0x7f0b0079 -> :sswitch_2aa
        0x7f0b007a -> :sswitch_277
        0x7f0b00a6 -> :sswitch_244
        0x7f0b00af -> :sswitch_211
        0x7f0b00c0 -> :sswitch_1d0
        0x7f0b00c2 -> :sswitch_19d
        0x7f0b00c3 -> :sswitch_16a
        0x7f0b00c4 -> :sswitch_137
        0x7f0b00c6 -> :sswitch_104
        0x7f0b0118 -> :sswitch_d1
        0x7f0b0158 -> :sswitch_9e
        0x7f0b0159 -> :sswitch_6b
        0x7f0b0175 -> :sswitch_38
        0x7f0b0178 -> :sswitch_5
    .end sparse-switch
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 273
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7f0b00c0

    const v3, 0x7f0b004c

    sparse-switch v1, :sswitch_data_164

    goto/16 :goto_162

    :sswitch_13
    const-string v1, "layout/camera_layout_0"

    .line 396
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    return v3

    :sswitch_1c
    const-string v1, "layout/account_permit_view_0"

    .line 300
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0024

    return p1

    :sswitch_28
    const-string v1, "layout/account_permit_list_0"

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0023

    return p1

    :sswitch_34
    const-string v1, "layout/user_signature_0"

    .line 342
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0178

    return p1

    :sswitch_40
    const-string v1, "layout/account_permit_item_0"

    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0022

    return p1

    :sswitch_4c
    const-string v1, "layout/setup_overlay_permission_0"

    .line 384
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0159

    return p1

    :sswitch_58
    const-string v1, "layout/account_permit_edit_0"

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0020

    return p1

    :sswitch_64
    const-string v1, "layout/call_list_item_options_0"

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0041

    return p1

    :sswitch_70
    const-string v1, "layout-land/camera_layout_0"

    .line 390
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    return v3

    :sswitch_79
    const-string v1, "layout/digital_dispatch_list_item_options_0"

    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b007a

    return p1

    :sswitch_85
    const-string v1, "layout/account_private_property_contacts_0"

    .line 408
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0026

    return p1

    :sswitch_91
    const-string v1, "layout/row_contact_0"

    .line 444
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0118

    return p1

    :sswitch_9d
    const-string v1, "layout/aaaaaa_delete_0"

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const/high16 p1, 0x7f0b0000

    return p1

    :sswitch_a8
    const-string v1, "layout/notification_list_0"

    .line 426
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00af

    return p1

    :sswitch_b4
    const-string v1, "layout/account_permit_address_0"

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b001f

    return p1

    :sswitch_c0
    const-string v1, "layout/payment_list_item_0"

    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00c3

    return p1

    :sswitch_cc
    const-string v1, "layout/camera_preview_layout_0"

    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b004f

    return p1

    :sswitch_d8
    const-string v1, "layout/account_private_property_summary_0"

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0027

    return p1

    :sswitch_e4
    const-string v1, "layout/upload_work_list_0"

    .line 348
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0175

    return p1

    :sswitch_f0
    const-string v1, "layout/payment_list_item_options_0"

    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00c4

    return p1

    :sswitch_fc
    const-string v1, "layout/payment_list_0"

    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00c2

    return p1

    :sswitch_108
    const-string v1, "layout/photo_list_0"

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00c6

    return p1

    :sswitch_114
    const-string v1, "layout-land/on_scene_layout_0"

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    return v2

    :sswitch_11d
    const-string v1, "layout/map_main_0"

    .line 336
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b00a6

    return p1

    :sswitch_129
    const-string v1, "layout/account_private_property_view_0"

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0028

    return p1

    :sswitch_135
    const-string v1, "layout/on_scene_layout_0"

    .line 312
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    return v2

    :sswitch_13e
    const-string v1, "layout/setup_location_permission_0"

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0158

    return p1

    :sswitch_14a
    const-string v1, "layout/digital_dispatch_list_item_0"

    .line 354
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0079

    return p1

    :sswitch_156
    const-string v1, "layout/digital_dispatch_list_0"

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    const p1, 0x7f0b0078

    return p1

    :cond_162
    :goto_162
    return v0

    nop

    :sswitch_data_164
    .sparse-switch
        -0x762a6bd8 -> :sswitch_156
        -0x7360caf4 -> :sswitch_14a
        -0x62058b9d -> :sswitch_13e
        -0x53405697 -> :sswitch_135
        -0x41573ef3 -> :sswitch_129
        -0x3f24888e -> :sswitch_11d
        -0x3efa8813 -> :sswitch_114
        -0x3ea305bf -> :sswitch_108
        -0x2631cd53 -> :sswitch_fc
        -0x255422ba -> :sswitch_f0
        -0x10cfec7c -> :sswitch_e4
        -0xfc84580 -> :sswitch_d8
        -0x9578719 -> :sswitch_cc
        -0x7b21e59 -> :sswitch_c0
        -0x5a62968 -> :sswitch_b4
        0x17e7d03e -> :sswitch_a8
        0x180986b6 -> :sswitch_9d
        0x20ad8187 -> :sswitch_91
        0x31e55fbb -> :sswitch_85
        0x3cf9fbab -> :sswitch_79
        0x3fb7ced4 -> :sswitch_70
        0x53696248 -> :sswitch_64
        0x58228028 -> :sswitch_58
        0x5e74efd6 -> :sswitch_4c
        0x5fd56ef1 -> :sswitch_40
        0x6334883a -> :sswitch_34
        0x645f6dbc -> :sswitch_28
        0x75699203 -> :sswitch_1c
        0x7e082f50 -> :sswitch_13
    .end sparse-switch
.end method
