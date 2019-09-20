.class public Lcom/towbook/api/DriverTruckDefault;
.super Ljava/lang/Object;
.source "DriverTruckDefault.java"


# instance fields
.field private driverId:I

.field private truckId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/towbook/api/DriverTruckDefault;->truckId:I

    .line 11
    iput p2, p0, Lcom/towbook/api/DriverTruckDefault;->driverId:I

    return-void
.end method


# virtual methods
.method public getDriverId()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/towbook/api/DriverTruckDefault;->driverId:I

    return v0
.end method

.method public getTruckId()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/towbook/api/DriverTruckDefault;->truckId:I

    return v0
.end method

.method public setDriverId(I)Lcom/towbook/api/DriverTruckDefault;
    .registers 2

    .line 19
    iput p1, p0, Lcom/towbook/api/DriverTruckDefault;->driverId:I

    return-object p0
.end method

.method public setTruckId(I)Lcom/towbook/api/DriverTruckDefault;
    .registers 2

    .line 28
    iput p1, p0, Lcom/towbook/api/DriverTruckDefault;->truckId:I

    return-object p0
.end method
