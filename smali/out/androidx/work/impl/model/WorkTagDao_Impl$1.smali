.class Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "WorkTagDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/WorkTag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkTagDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkTagDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .registers 3

    .line 22
    iput-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkTag;)V
    .registers 5

    .line 30
    iget-object v0, p2, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 31
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 33
    :cond_9
    iget-object v0, p2, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 35
    :goto_e
    iget-object v0, p2, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_17

    .line 36
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1c

    .line 38
    :cond_17
    iget-object p2, p2, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 22
    check-cast p2, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkTag;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR IGNORE INTO `WorkTag`(`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method
