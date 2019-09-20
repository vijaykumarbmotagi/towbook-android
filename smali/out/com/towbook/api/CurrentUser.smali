.class public Lcom/towbook/api/CurrentUser;
.super Ljava/lang/Object;
.source "CurrentUser.java"

# interfaces
.implements Lcom/towbook/api/ApiItem;


# static fields
.field public static final USER_TYPE_ACCOUNTANT:I = 0x4

.field public static final USER_TYPE_ACCOUNT_MANAGER:I = 0x65

.field public static final USER_TYPE_ACCOUNT_USER:I = 0x64

.field public static final USER_TYPE_DISPATCHER:I = 0x2

.field public static final USER_TYPE_DRIVER:I = 0x3

.field public static final USER_TYPE_MANAGER:I = 0x1

.field public static final USER_TYPE_POLICE_OFFICER:I = 0x5

.field public static final USER_TYPE_SYSTEM_ADMIN:I = 0xff


# instance fields
.field private acceptReject:Lcom/towbook/api/user/AcceptReject;

.field private checkInStatus:Z

.field private id:I

.field private locationTracking:Lcom/towbook/api/user/LocationTracking;

.field private name:Ljava/lang/String;

.field private needSecurityQuestions:Z

.field private options:Lcom/towbook/api/user/UserOptions;

.field private requireGPSCheckin:Z

.field private signature:Lcom/towbook/api/user/CurrentUserSignature;

.field private type:I

.field private userCommissions:Lcom/towbook/api/user/UserCommissions;

.field private userImage:Landroid/graphics/Bitmap;

.field private userStatus:Lcom/towbook/api/user/UserStatus;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/towbook/api/CurrentUser;->id:I

    const-string v1, ""

    .line 42
    iput-object v1, p0, Lcom/towbook/api/CurrentUser;->name:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/towbook/api/CurrentUser;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/towbook/api/CurrentUser;->id:I

    .line 49
    iput-object p2, p0, Lcom/towbook/api/CurrentUser;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/towbook/api/CurrentUser;->type:I

    return-void
.end method


# virtual methods
.method public getAcceptReject()Lcom/towbook/api/user/AcceptReject;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->acceptReject:Lcom/towbook/api/user/AcceptReject;

    if-nez v0, :cond_a

    .line 202
    new-instance v0, Lcom/towbook/api/user/AcceptReject;

    invoke-direct {v0}, Lcom/towbook/api/user/AcceptReject;-><init>()V

    return-object v0

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->acceptReject:Lcom/towbook/api/user/AcceptReject;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/towbook/api/CurrentUser;->id:I

    return v0
.end method

.method public getLocationTracking()Lcom/towbook/api/user/LocationTracking;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->locationTracking:Lcom/towbook/api/user/LocationTracking;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/towbook/api/user/LocationTracking;

    invoke-direct {v0}, Lcom/towbook/api/user/LocationTracking;-><init>()V

    iput-object v0, p0, Lcom/towbook/api/CurrentUser;->locationTracking:Lcom/towbook/api/user/LocationTracking;

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->locationTracking:Lcom/towbook/api/user/LocationTracking;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameList(Lcom/towbook/api/ConfigSettings;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/ConfigSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getDrivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Driver;

    .line 69
    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/towbook/api/CurrentUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method public getOptions()Lcom/towbook/api/user/UserOptions;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->options:Lcom/towbook/api/user/UserOptions;

    return-object v0
.end method

.method public getSignature()Lcom/towbook/api/user/CurrentUserSignature;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->signature:Lcom/towbook/api/user/CurrentUserSignature;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/towbook/api/CurrentUser;->type:I

    return v0
.end method

.method public getUserCommissions()Lcom/towbook/api/user/UserCommissions;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->userCommissions:Lcom/towbook/api/user/UserCommissions;

    return-object v0
.end method

.method public getUserImage()Landroid/graphics/Bitmap;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->userImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUserStatus()Lcom/towbook/api/user/UserStatus;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->userStatus:Lcom/towbook/api/user/UserStatus;

    return-object v0
.end method

.method public getUserStatusColor()I
    .registers 3

    .line 114
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getUserStatus()Lcom/towbook/api/user/UserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/UserStatus;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, -0xff0100

    return v0

    .line 116
    :cond_14
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getUserStatus()Lcom/towbook/api/user/UserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/UserStatus;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, -0x100

    return v0

    .line 118
    :cond_27
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getUserStatus()Lcom/towbook/api/user/UserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/UserStatus;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Appear Offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/high16 v0, -0x10000

    return v0

    :cond_3a
    const/high16 v0, -0x1000000

    return v0
.end method

.method public isAccountManager()Z
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountMember()Z
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountUser()Z
    .registers 2

    .line 191
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public isCheckInStatus()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/towbook/api/CurrentUser;->checkInStatus:Z

    return v0
.end method

.method public isDispatcher()Z
    .registers 3

    .line 155
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public isDriver()Z
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public isManager()Z
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    return v1
.end method

.method public isNeedSecurityQuestions()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/towbook/api/CurrentUser;->needSecurityQuestions:Z

    return v0
.end method

.method public isRequireGPSCheckin()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/towbook/api/CurrentUser;->requireGPSCheckin:Z

    return v0
.end method

.method public setAcceptReject(Lcom/towbook/api/user/AcceptReject;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->acceptReject:Lcom/towbook/api/user/AcceptReject;

    return-void
.end method

.method public setCheckInStatus(Z)V
    .registers 2

    .line 232
    iput-boolean p1, p0, Lcom/towbook/api/CurrentUser;->checkInStatus:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/towbook/api/CurrentUser;->id:I

    return-void
.end method

.method public setLocationTracking(Lcom/towbook/api/user/LocationTracking;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->locationTracking:Lcom/towbook/api/user/LocationTracking;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedSecurityQuestions(Z)V
    .registers 2

    .line 216
    iput-boolean p1, p0, Lcom/towbook/api/CurrentUser;->needSecurityQuestions:Z

    return-void
.end method

.method public setOptions(Lcom/towbook/api/user/UserOptions;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->options:Lcom/towbook/api/user/UserOptions;

    return-void
.end method

.method public setRequireGPSCheckin(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/towbook/api/CurrentUser;->requireGPSCheckin:Z

    return-void
.end method

.method public setSignature(Lcom/towbook/api/user/CurrentUserSignature;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->signature:Lcom/towbook/api/user/CurrentUserSignature;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/towbook/api/CurrentUser;->type:I

    return-void
.end method

.method public setUserCommissions(Lcom/towbook/api/user/UserCommissions;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->userCommissions:Lcom/towbook/api/user/UserCommissions;

    return-void
.end method

.method public setUserImage(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->userImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUserStatus(Lcom/towbook/api/user/UserStatus;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/towbook/api/CurrentUser;->userStatus:Lcom/towbook/api/user/UserStatus;

    return-void
.end method

.method public setUserStatusColor(I)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/towbook/api/CurrentUser;->userStatus:Lcom/towbook/api/user/UserStatus;

    invoke-virtual {v0, p1}, Lcom/towbook/api/user/UserStatus;->setColor(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
