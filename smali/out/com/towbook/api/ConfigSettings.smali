.class public Lcom/towbook/api/ConfigSettings;
.super Ljava/lang/Object;
.source "ConfigSettings.java"


# instance fields
.field private accountRateItemRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountRateItemRule;",
            ">;"
        }
    .end annotation
.end field

.field private accountTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountTag;",
            ">;"
        }
    .end annotation
.end field

.field private accountTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private accountTypesPlural:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Account;",
            ">;"
        }
    .end annotation
.end field

.field private addressBook:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/AddressBook;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Lcom/towbook/api/Attribute;

.field private companies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Company;",
            ">;"
        }
    .end annotation
.end field

.field private driverTruckDefaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/DriverTruckDefault;",
            ">;"
        }
    .end annotation
.end field

.field private drivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveTaxRate:Ljava/lang/String;

.field private features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private transient fromCache:Z
    .annotation build Lcom/towbook/api/core/GsonUtils$SkipSerialisation;
    .end annotation
.end field

.field private impoundLots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/ImpoundLot;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceDisclaimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Disclaimer;",
            ">;"
        }
    .end annotation
.end field

.field private maxVideoLengthInSeconds:I

.field private maxVideosPerCall:I

.field private parkingPermitTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/ParkingPermitType;",
            ">;"
        }
    .end annotation
.end field

.field private paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/PaymentType;",
            ">;"
        }
    .end annotation
.end field

.field private rateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;"
        }
    .end annotation
.end field

.field private reasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Reason;",
            ">;"
        }
    .end annotation
.end field

.field private signatureTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/SignatureType;",
            ">;"
        }
    .end annotation
.end field

.field private statuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private stickerAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerAccount;",
            ">;"
        }
    .end annotation
.end field

.field private stickerReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerReason;",
            ">;"
        }
    .end annotation
.end field

.field private stickerStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerStatus;",
            ">;"
        }
    .end annotation
.end field

.field private surcharges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Surcharge;",
            ">;"
        }
    .end annotation
.end field

.field private taxRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/TaxRate;",
            ">;"
        }
    .end annotation
.end field

.field private truckExpenseCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/ConfigTruckExpense;",
            ">;"
        }
    .end annotation
.end field

.field private trucks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Truck;",
            ">;"
        }
    .end annotation
.end field

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private vehicle:Lcom/towbook/api/Vehicle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountById(I)Lcom/towbook/api/Account;
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Account;

    .line 453
    invoke-virtual {v1}, Lcom/towbook/api/Account;->getId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountRateItemRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountRateItemRule;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accountRateItemRules:Ljava/util/List;

    return-object v0
.end method

.method public getAccountTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountTag;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accountTags:Ljava/util/List;

    return-object v0
.end method

.method public getAccountTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accountTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAccountTypesPlural()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accountTypesPlural:Ljava/util/List;

    return-object v0
.end method

.method public getAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Account;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public getAccountsWithBlank()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Account;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Account;

    invoke-virtual {v1}, Lcom/towbook/api/Account;->getId()I

    move-result v1

    if-eqz v1, :cond_25

    .line 273
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    :cond_25
    new-instance v1, Lcom/towbook/api/Account;

    const-string v3, "Not Selected"

    invoke-direct {v1, v2, v3}, Lcom/towbook/api/Account;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getAddressBook()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/AddressBook;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->addressBook:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lcom/towbook/api/Attribute;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->attributes:Lcom/towbook/api/Attribute;

    return-object v0
.end method

.method public getCompanies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Company;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->companies:Ljava/util/List;

    return-object v0
.end method

.method public getCompanyById(I)Lcom/towbook/api/Company;
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->companies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Company;

    .line 462
    invoke-virtual {v1}, Lcom/towbook/api/Company;->getId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisclaimers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Disclaimer;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->invoiceDisclaimers:Ljava/util/List;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/towbook/api/ConfigSettings;->invoiceDisclaimers:Ljava/util/List;

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->invoiceDisclaimers:Ljava/util/List;

    return-object v0
.end method

.method public getDriverIndexById(II)I
    .registers 5

    .line 257
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getDriversWithBlankAndMultiple()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/towbook/api/Driver;->filterByCompanyId(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 259
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Driver;

    .line 260
    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getId()I

    move-result v1

    if-ne v1, p1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    return v0
.end method

.method public getDriverIndexById(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 246
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 247
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Driver;

    invoke-virtual {v2}, Lcom/towbook/api/Driver;->getId()I

    move-result v2

    if-ne v2, p1, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return v0
.end method

.method public getDriverName(Lcom/towbook/api/CurrentUser;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/CurrentUser;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v1, Lcom/towbook/api/Driver;

    invoke-direct {v1}, Lcom/towbook/api/Driver;-><init>()V

    .line 413
    iget-object v2, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Driver;

    .line 414
    invoke-virtual {v3}, Lcom/towbook/api/Driver;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {p1}, Lcom/towbook/api/CurrentUser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 415
    invoke-virtual {v3}, Lcom/towbook/api/Driver;->getLinkedUserId()I

    move-result v6

    invoke-virtual {p1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v7

    if-ne v6, v7, :cond_10

    move-object v1, v3

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eqz p1, :cond_48

    .line 423
    new-instance p1, Lcom/towbook/api/Driver;

    const-string v2, "Not Selected"

    invoke-direct {p1, v5, v2}, Lcom/towbook/api/Driver;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0

    .line 427
    :cond_48
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getDriversWithBlankAndMultiple()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDriverTruckDefaults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/DriverTruckDefault;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->driverTruckDefaults:Ljava/util/List;

    return-object v0
.end method

.method public getDrivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    return-object v0
.end method

.method public getDriversWithBlank()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Driver;

    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getId()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 222
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Driver;

    .line 223
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 226
    :cond_3c
    new-instance v1, Lcom/towbook/api/Driver;

    const-string v3, "Not Selected"

    invoke-direct {v1, v2, v3}, Lcom/towbook/api/Driver;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getDriversWithBlankAndMultiple()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Driver;

    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getId()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 235
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Driver;

    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 237
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 240
    :cond_3c
    new-instance v1, Lcom/towbook/api/Driver;

    const-string v3, "Not Selected"

    invoke-direct {v1, v2, v3}, Lcom/towbook/api/Driver;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 241
    new-instance v3, Lcom/towbook/api/Driver;

    const-string v4, "Multiple Drivers"

    invoke-direct {v3, v2, v4}, Lcom/towbook/api/Driver;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getEffectiveTaxRate()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->effectiveTaxRate:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Feature;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->features:Ljava/util/List;

    return-object v0
.end method

.method public getImpoundLots()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/ImpoundLot;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->impoundLots:Ljava/util/List;

    return-object v0
.end method

.method public getMaxVideoLengthInSeconds()I
    .registers 2

    .line 486
    iget v0, p0, Lcom/towbook/api/ConfigSettings;->maxVideoLengthInSeconds:I

    return v0
.end method

.method public getMaxVideosPerCall()I
    .registers 2

    .line 494
    iget v0, p0, Lcom/towbook/api/ConfigSettings;->maxVideosPerCall:I

    return v0
.end method

.method public getParkingPermitTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/ParkingPermitType;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->parkingPermitTypes:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/PaymentType;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->paymentTypes:Ljava/util/List;

    return-object v0
.end method

.method public getRateItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->rateItems:Ljava/util/List;

    return-object v0
.end method

.method public getReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Reason;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    return-object v0
.end method

.method public getReasonsWithBlank(Ljava/lang/Integer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/Reason;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Reason;

    invoke-virtual {v1}, Lcom/towbook/api/Reason;->getId()I

    move-result v1

    if-eqz v1, :cond_58

    .line 285
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Reason;

    .line 286
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Lcom/towbook/api/Reason;->isActive()Z

    move-result v4

    if-eqz v4, :cond_26

    if-eqz p1, :cond_54

    .line 288
    invoke-virtual {v3}, Lcom/towbook/api/Reason;->getCompanyId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v3}, Lcom/towbook/api/Reason;->getCompanyId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 289
    :cond_50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 292
    :cond_54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 298
    :cond_58
    new-instance p1, Lcom/towbook/api/Reason;

    const-string v1, "Not Selected"

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/towbook/api/Reason;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getSignatureTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/SignatureType;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->signatureTypes:Ljava/util/List;

    return-object v0
.end method

.method public getStatuses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Status;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->statuses:Ljava/util/List;

    return-object v0
.end method

.method public getStickerAccountById(I)Lcom/towbook/api/stickering/StickerAccount;
    .registers 5

    .line 313
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getStickerAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/stickering/StickerAccount;

    .line 314
    invoke-virtual {v1}, Lcom/towbook/api/stickering/StickerAccount;->getId()I

    move-result v2

    if-ne v2, p1, :cond_8

    return-object v1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStickerAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerAccount;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerAccounts:Ljava/util/List;

    if-nez v0, :cond_b

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerAccounts:Ljava/util/List;

    .line 309
    :cond_b
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getStickerReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerReason;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerReasons:Ljava/util/List;

    if-nez v0, :cond_b

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerReasons:Ljava/util/List;

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerReasons:Ljava/util/List;

    return-object v0
.end method

.method public getStickerStatuses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerStatus;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->stickerStatuses:Ljava/util/List;

    return-object v0
.end method

.method public getSurcharges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Surcharge;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->surcharges:Ljava/util/List;

    return-object v0
.end method

.method public getTaxRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/TaxRate;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->taxRates:Ljava/util/List;

    return-object v0
.end method

.method public getTruckExpenseCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/ConfigTruckExpense;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTruckExpenseCategoriesWithBlank()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/ConfigTruckExpense;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/ConfigTruckExpense;

    invoke-virtual {v1}, Lcom/towbook/api/ConfigTruckExpense;->getId()I

    move-result v1

    if-eqz v1, :cond_25

    .line 443
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    :cond_25
    new-instance v1, Lcom/towbook/api/ConfigTruckExpense;

    const-string v3, "Not Selected"

    invoke-direct {v1, v2, v3}, Lcom/towbook/api/ConfigTruckExpense;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getTrucks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Truck;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    return-object v0
.end method

.method public getTrucksWithBlank()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Truck;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Truck;

    invoke-virtual {v1}, Lcom/towbook/api/Truck;->getId()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 208
    iget-object v1, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Truck;

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 210
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 213
    :cond_3c
    new-instance v1, Lcom/towbook/api/Truck;

    const-string v3, "Not Selected"

    invoke-direct {v1, v2, v3}, Lcom/towbook/api/Truck;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getUserType(Lcom/towbook/api/CurrentUser;)Ljava/lang/String;
    .registers 3

    .line 364
    invoke-virtual {p1}, Lcom/towbook/api/CurrentUser;->getType()I

    move-result p1

    const/16 v0, 0xff

    if-eq p1, v0, :cond_26

    packed-switch p1, :pswitch_data_2a

    packed-switch p1, :pswitch_data_38

    const-string p1, ""

    goto :goto_28

    :pswitch_11
    const-string p1, "AccountManager"

    goto :goto_28

    :pswitch_14
    const-string p1, "AccountUser"

    goto :goto_28

    :pswitch_17
    const-string p1, "PoliceOfficer"

    goto :goto_28

    :pswitch_1a
    const-string p1, "Accountant"

    goto :goto_28

    :pswitch_1d
    const-string p1, "Driver"

    goto :goto_28

    :pswitch_20
    const-string p1, "Dispatcher"

    goto :goto_28

    :pswitch_23
    const-string p1, "Manager"

    goto :goto_28

    :cond_26
    const-string p1, "SystemAdmin"

    :goto_28
    return-object p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x64
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->users:Ljava/util/List;

    return-object v0
.end method

.method public getVehicle()Lcom/towbook/api/Vehicle;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/towbook/api/ConfigSettings;->vehicle:Lcom/towbook/api/Vehicle;

    return-object v0
.end method

.method public isFromCache()Z
    .registers 2

    .line 518
    iget-boolean v0, p0, Lcom/towbook/api/ConfigSettings;->fromCache:Z

    return v0
.end method

.method public setAccountRateItemRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountRateItemRule;",
            ">;)V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->accountRateItemRules:Ljava/util/List;

    return-void
.end method

.method public setAccountTags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountTag;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->accountTags:Ljava/util/List;

    return-void
.end method

.method public setAccountTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->accountTypes:Ljava/util/List;

    return-void
.end method

.method public setAccountTypesPlural(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/AccountType;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->accountTypesPlural:Ljava/util/List;

    return-void
.end method

.method public setAccounts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Account;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->accounts:Ljava/util/List;

    return-void
.end method

.method public setAddressBook(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/AddressBook;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->addressBook:Ljava/util/List;

    return-void
.end method

.method public setAttributes(Lcom/towbook/api/Attribute;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->attributes:Lcom/towbook/api/Attribute;

    return-void
.end method

.method public setCompanies(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Company;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->companies:Ljava/util/List;

    return-void
.end method

.method public setDisclaimers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Disclaimer;",
            ">;)V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->invoiceDisclaimers:Ljava/util/List;

    return-void
.end method

.method public setDriverTruckDefaults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/DriverTruckDefault;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->driverTruckDefaults:Ljava/util/List;

    return-void
.end method

.method public setDrivers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->drivers:Ljava/util/List;

    return-void
.end method

.method public setEffectiveTaxRate(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->effectiveTaxRate:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Feature;",
            ">;)V"
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->features:Ljava/util/List;

    return-void
.end method

.method public setFromCache(Z)V
    .registers 2

    .line 522
    iput-boolean p1, p0, Lcom/towbook/api/ConfigSettings;->fromCache:Z

    return-void
.end method

.method public setImpoundLots(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/ImpoundLot;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->impoundLots:Ljava/util/List;

    return-void
.end method

.method public setMaxVideoLengthInSeconds(I)V
    .registers 2

    .line 490
    iput p1, p0, Lcom/towbook/api/ConfigSettings;->maxVideoLengthInSeconds:I

    return-void
.end method

.method public setMaxVideosPerCall(I)V
    .registers 2

    .line 498
    iput p1, p0, Lcom/towbook/api/ConfigSettings;->maxVideosPerCall:I

    return-void
.end method

.method public setParkingPermitTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/ParkingPermitType;",
            ">;)V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->parkingPermitTypes:Ljava/util/List;

    return-void
.end method

.method public setPaymentTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/PaymentType;",
            ">;)V"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->paymentTypes:Ljava/util/List;

    return-void
.end method

.method public setRateItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->rateItems:Ljava/util/List;

    return-void
.end method

.method public setReasons(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Reason;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->reasons:Ljava/util/List;

    return-void
.end method

.method public setSignatureTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/SignatureType;",
            ">;)V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->signatureTypes:Ljava/util/List;

    return-void
.end method

.method public setStatuses(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->statuses:Ljava/util/List;

    return-void
.end method

.method public setStickerAccounts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerAccount;",
            ">;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->stickerAccounts:Ljava/util/List;

    return-void
.end method

.method public setStickerReasons(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerReason;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->stickerReasons:Ljava/util/List;

    return-void
.end method

.method public setStickerStatuses(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerStatus;",
            ">;)V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->stickerStatuses:Ljava/util/List;

    return-void
.end method

.method public setSurcharges(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Surcharge;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->surcharges:Ljava/util/List;

    return-void
.end method

.method public setTaxRates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/TaxRate;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->taxRates:Ljava/util/List;

    return-void
.end method

.method public setTruckExpenseCategories(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/ConfigTruckExpense;",
            ">;)V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->truckExpenseCategories:Ljava/util/List;

    return-void
.end method

.method public setTrucks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Truck;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->trucks:Ljava/util/List;

    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->users:Ljava/util/List;

    return-void
.end method

.method public setVehicle(Lcom/towbook/api/Vehicle;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/towbook/api/ConfigSettings;->vehicle:Lcom/towbook/api/Vehicle;

    return-void
.end method

.method public showWaitingTabForCurrent(Lcom/towbook/api/CurrentUser;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 399
    invoke-virtual {p0, p1}, Lcom/towbook/api/ConfigSettings;->getUserType(Lcom/towbook/api/CurrentUser;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Driver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    return v0

    :cond_12
    return v0
.end method
