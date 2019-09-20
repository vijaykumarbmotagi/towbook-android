.class Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Separator"
.end annotation


# instance fields
.field private volatile iAfterParser:Lorg/joda/time/format/PeriodParser;

.field private volatile iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

.field private final iBeforeParser:Lorg/joda/time/format/PeriodParser;

.field private final iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

.field private final iFinalText:Ljava/lang/String;

.field private final iParsedForms:[Ljava/lang/String;

.field private final iText:Ljava/lang/String;

.field private final iUseAfter:Z

.field private final iUseBefore:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V
    .registers 10

    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1926
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    .line 1927
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 1929
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_f
    if-eqz p3, :cond_46

    array-length v0, p3

    if-nez v0, :cond_15

    goto :goto_46

    .line 1935
    :cond_15
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1936
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1937
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2f

    .line 1939
    array-length p1, p3

    :goto_25
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2f

    .line 1940
    aget-object p2, p3, p1

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1943
    :cond_2f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1944
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1945
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    goto :goto_4e

    :cond_46
    :goto_46
    const/4 p2, 0x1

    .line 1932
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    .line 1948
    :goto_4e
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1949
    iput-object p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforeParser:Lorg/joda/time/format/PeriodParser;

    .line 1950
    iput-boolean p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    .line 1951
    iput-boolean p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    return-void
.end method

.method static synthetic access$000(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;
    .registers 1

    .line 1909
    iget-object p0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    return-object p0
.end method

.method static synthetic access$100(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;
    .registers 1

    .line 1909
    iget-object p0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    return-object p0
.end method


# virtual methods
.method public calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .registers 8

    .line 1963
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1964
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1966
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v2

    invoke-interface {v1, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1969
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    .line 1970
    invoke-interface {v0, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_49

    .line 1971
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    .line 1972
    invoke-interface {v1, p1, v0, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result p1

    if-lez p1, :cond_49

    if-le p1, v4, :cond_28

    .line 1974
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    :goto_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_49

    .line 1977
    :cond_30
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_49

    .line 1980
    :cond_38
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_49

    invoke-interface {v1, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result p1

    if-lez p1, :cond_49

    .line 1981
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    :cond_49
    :goto_49
    return v2
.end method

.method public countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .registers 6

    .line 1955
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-ge v0, p2, :cond_f

    .line 1957
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_f
    return v0
.end method

.method finish(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
    .registers 3

    .line 2081
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2082
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    return-object p0
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move-object/from16 v9, p4

    .line 2035
    iget-object v3, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforeParser:Lorg/joda/time/format/PeriodParser;

    invoke-interface {v3, v1, v8, v2, v9}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v10

    if-gez v10, :cond_13

    return v10

    :cond_13
    const/4 v11, -0x1

    if-le v10, v2, :cond_4c

    .line 2045
    iget-object v13, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    .line 2046
    array-length v14, v13

    const/4 v15, 0x0

    :goto_1a
    if-ge v15, v14, :cond_4c

    .line 2048
    aget-object v7, v13, v15

    if-eqz v7, :cond_3c

    .line 2049
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    move-object v2, v8

    move v4, v10

    move-object v5, v7

    move-object v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3d

    :cond_39
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_3c
    move-object v12, v7

    :goto_3d
    if-nez v12, :cond_42

    const/16 v17, 0x0

    goto :goto_48

    .line 2052
    :cond_42
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v17, v2

    :goto_48
    add-int v10, v10, v17

    const/4 v12, 0x1

    goto :goto_4f

    :cond_4c
    const/4 v12, 0x0

    const/16 v17, -0x1

    .line 2061
    :goto_4f
    iget-object v2, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    invoke-interface {v2, v1, v8, v10, v9}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v1

    if-gez v1, :cond_58

    return v1

    :cond_58
    if-eqz v12, :cond_61

    if-ne v1, v10, :cond_61

    if-lez v17, :cond_61

    xor-int/lit8 v1, v10, -0x1

    return v1

    :cond_61
    if-le v1, v10, :cond_6c

    if-nez v12, :cond_6c

    .line 2072
    iget-boolean v2, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    if-nez v2, :cond_6c

    xor-int/lit8 v1, v10, -0x1

    return v1

    :cond_6c
    return v1
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2011
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2013
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2014
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 2015
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    .line 2016
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    .line 2017
    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    if-le v0, v3, :cond_22

    .line 2019
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    goto :goto_24

    :cond_22
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3d

    .line 2022
    :cond_28
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3d

    .line 2025
    :cond_2e
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_3d

    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    .line 2026
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2028
    :cond_3d
    :goto_3d
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .registers 8

    .line 1988
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1989
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1991
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 1992
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 1993
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    .line 1994
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    .line 1995
    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    if-le v0, v3, :cond_22

    .line 1997
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    goto :goto_24

    :cond_22
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    :goto_24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3d

    .line 2000
    :cond_28
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3d

    .line 2003
    :cond_2e
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_3d

    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3d

    .line 2004
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2006
    :cond_3d
    :goto_3d
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    return-void
.end method
