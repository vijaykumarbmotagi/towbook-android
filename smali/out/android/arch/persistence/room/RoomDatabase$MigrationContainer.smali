.class public Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private addMigration(Landroid/arch/persistence/room/migration/Migration;)V
    .registers 8

    .line 657
    iget v0, p1, Landroid/arch/persistence/room/migration/Migration;->startVersion:I

    .line 658
    iget v1, p1, Landroid/arch/persistence/room/migration/Migration;->endVersion:I

    .line 659
    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/SparseArrayCompat;

    if-nez v2, :cond_18

    .line 661
    new-instance v2, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 662
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 664
    :cond_18
    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/migration/Migration;

    if-eqz v0, :cond_3e

    const-string v3, "ROOM"

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding migration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_3e
    invoke-virtual {v2, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    const/4 v2, -0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_7
    if-eqz p2, :cond_c

    if-ge p3, p4, :cond_4d

    goto :goto_e

    :cond_c
    if-le p3, p4, :cond_4d

    .line 695
    :goto_e
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/SparseArrayCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    return-object v4

    .line 700
    :cond_1a
    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz p2, :cond_25

    add-int/lit8 v5, v5, -0x1

    const/4 v7, -0x1

    goto :goto_27

    :cond_25
    move v7, v5

    const/4 v5, 0x0

    :goto_27
    if-eq v5, v7, :cond_4a

    .line 713
    invoke-virtual {v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    if-eqz p2, :cond_37

    if-gt v8, p4, :cond_35

    if-le v8, p3, :cond_35

    :goto_33
    const/4 v9, 0x1

    goto :goto_3c

    :cond_35
    const/4 v9, 0x0

    goto :goto_3c

    :cond_37
    if-lt v8, p4, :cond_35

    if-ge v8, p3, :cond_35

    goto :goto_33

    :goto_3c
    if-eqz v9, :cond_48

    .line 721
    invoke-virtual {v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v8

    const/4 v6, 0x1

    goto :goto_4a

    :cond_48
    add-int/2addr v5, v2

    goto :goto_27

    :cond_4a
    :goto_4a
    if-nez v6, :cond_7

    return-object v4

    :cond_4d
    return-object p1
.end method


# virtual methods
.method public varargs addMigrations([Landroid/arch/persistence/room/migration/Migration;)V
    .registers 5
    .param p1    # [Landroid/arch/persistence/room/migration/Migration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 652
    invoke-direct {p0, v2}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->addMigration(Landroid/arch/persistence/room/migration/Migration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public findMigrationPath(II)Ljava/util/List;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_7

    .line 684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    if-le p2, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 687
    :goto_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
