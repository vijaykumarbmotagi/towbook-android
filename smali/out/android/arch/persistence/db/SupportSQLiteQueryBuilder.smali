.class public final Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SupportSQLiteQueryBuilder.java"


# static fields
.field private static final sLimitPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mBindArgs:[Ljava/lang/Object;

.field private mColumns:[Ljava/lang/String;

.field private mDistinct:Z

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mLimit:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private final mTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mDistinct:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mColumns:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mGroupBy:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mHaving:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mOrderBy:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mLimit:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mTable:Ljava/lang/String;

    return-void
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 176
    invoke-static {p2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method

.method private static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    .line 190
    aget-object v2, p1, v1

    if-lez v1, :cond_d

    const-string v3, ", "

    .line 192
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    const/16 p1, 0x20

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static builder(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    .line 47
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;

    invoke-direct {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method


# virtual methods
.method public columns([Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    .line 72
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public create()Landroid/arch/persistence/db/SupportSQLiteQuery;
    .registers 4

    .line 149
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mGroupBy:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mHaving:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HAVING clauses are only permitted when using a groupBy clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-boolean v1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mDistinct:Z

    if-eqz v1, :cond_2d

    const-string v1, "DISTINCT "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_2d
    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mColumns:[Ljava/lang/String;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mColumns:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3c

    .line 160
    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mColumns:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_41

    :cond_3c
    const-string v1, " * "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    const-string v1, " FROM "

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 166
    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mSelection:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " GROUP BY "

    .line 167
    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mGroupBy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " HAVING "

    .line 168
    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mHaving:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " ORDER BY "

    .line 169
    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mOrderBy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " LIMIT "

    .line 170
    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mLimit:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mBindArgs:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public distinct()Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mDistinct:Z

    return-object p0
.end method

.method public groupBy(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    .line 99
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mGroupBy:Ljava/lang/String;

    return-object p0
.end method

.method public having(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    .line 111
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mHaving:Ljava/lang/String;

    return-object p0
.end method

.method public limit(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 5

    .line 135
    invoke-static {p1}, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_29

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid LIMIT clauses:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_29
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mLimit:Ljava/lang/String;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 2

    .line 123
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public selection(Ljava/lang/String;[Ljava/lang/Object;)Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;
    .registers 3

    .line 85
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mSelection:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Landroid/arch/persistence/db/SupportSQLiteQueryBuilder;->mBindArgs:[Ljava/lang/Object;

    return-object p0
.end method
