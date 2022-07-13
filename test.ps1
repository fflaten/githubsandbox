BeforeAll {
    function Test-EvenNumbers {
        [CmdletBinding()]
        param (
            [Parameter(Mandatory)]
            [int]
            $Number
        )

        $Number % 2 -eq 0
    }
}

Describe Test-EvenNumber {
    Context 'Even Numbers' {
        It '<number> is even' -TestCases @(
            @{ Number = 1 },
            @{ Number = 4 },
            @{ Number = 5 }
        ) {
            param($Number)
            Test-EvenNumbers -Number $Number | Should -BeTrue
            Write-Host 'hello world'
        }
    }
}