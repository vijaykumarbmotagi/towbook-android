.class public Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;
.super Ljava/util/IllegalFormatConversionException;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalFormatConversionCategoryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final found:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;


# direct methods
.method public constructor <init>(Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;)V
    .registers 6

    .line 200
    iget-object v0, p1, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const/16 v0, 0x2d

    goto :goto_12

    :cond_c
    iget-object v0, p1, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_12
    iget-object v2, p2, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    if-nez v2, :cond_19

    const-class v1, Ljava/lang/Object;

    goto :goto_1d

    :cond_19
    iget-object v2, p2, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    aget-object v1, v2, v1

    :goto_1d
    invoke-direct {p0, v0, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .line 202
    iput-object p1, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 203
    iput-object p2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method


# virtual methods
.method public getExpected()Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2

    .line 207
    iget-object v0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getFound()Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2

    .line 211
    iget-object v0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    const-string v0, "Expected category %s but found %s."

    const/4 v1, 0x2

    .line 216
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method